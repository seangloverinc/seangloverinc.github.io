---
layout: post
title: Streaming a Play file upload to an OutputStream
#date: 2016-01-10 05:00:52.000000000 -04:00
categories:
- Scala
- Play
tags:
- play framework
- scala
status: publish
type: post
published: true
share_url: http://seanglover.com
meta:
  _edit_last: '1'
  _syntaxhighlighter_encoded: '1'
  _thumbnail_id: '514'
  _encloseme: '1'
author:
  login: wladek
  email: wladek@gmail.com
  display_name: Sean Glover
  first_name: Sean
  last_name: Glover
excerpt: !ruby/object:Hpricot::Doc
---

When working with large amounts of data in Java you will inevitably learn about Streams.  Not to be confused with the Java 8's Streaming API, I'm talking about those old Java workhorses of the `InputStream` and `OuputStream` variety.  The Iteratees API (part of the Play 2.0 release) introduced a new way to think about processing a data stream.  The Iteratees types are very similar to your old Java Streams, but with a more idiomatic Scala API.  In this post I'll briefly describe how [Iteratees](https://www.playframework.com/documentation/2.4.x/Iteratees) work and go over a [sample Play! 2.4 app which will calculate the MD5 hash of any file you upload to it](https://github.com/seglo/play-file-upload-streaming).

## Play Iteratees API

At a high level the type definition of an Action is `Request[A] => Response`.  `A` represents the type of input you're receiving; it could be a `String`, a `JsonValue`, or simply an `Array[Byte]`.  For every `Request[A]` there's a `BodyParser[A]` used to parse the body of the request.  A parsed result of type `A` eventually resides in the requests body value (i.e. request.body).  When we go further down Play's type model rabbit hole we discover that a `BodyParser[A]` evaluates to an Iteratee and more specifically the type: `Iteratee[Array[Byte], A]`.

Play's Iteratees API can be broken down into 3 core types: Enumerators, Iteratees, and Enumeratees.  Play's Enumerators are like Java `InputStream`'s.  They're used to represent a data source or generator of infinite length.  On the other hand, Iteratees are consumers of a stream of data.  An Iteratee can be thought of as a functional analog to Java's `OutputStream`.

An Iteratee instance takes two types [`Iteratee[E, A]`](https://www.playframework.com/documentation/2.4.x/api/scala/index.html#play.api.libs.iteratee.Iteratee).  

- `E` is the input type.  This represents a chunk of data that can be consumed by the Iteratee.  When dealing with HTTP Multipart Form data this will be represented as `Array[Byte]`, although it really depends on the content type of your stream.
- `A` is the output of the consumed stream.  In the provided sample project we return a `Try[Output]`.

For more information on this API please read the Play! 2.4 documentation page called [Handling data streams reactively](https://www.playframework.com/documentation/2.4.x/Iteratees).

## Building the OutputStream Body Parser

In this example the return value will be an `Output`, which is just a wrapper around a Java `OutputStream`.  I use this type to work with Iteratees.  I could have just used an `OutputStream`, but wrapping it allows me to write my Iteratee implementation a little more elegantly.  I've defined the `Output` trait and a `Md5StreamOutput` implementation.

{% highlight scala linenos=table %}
trait Output {
  def write(bytes: Array[Byte]): Unit
  def close(): Unit
}

case class Md5StreamOutput(os: OutputStream, md: MessageDigest) extends Output {
  def write(bytes: Array[Byte]): Unit = os.write(bytes)
  def close() = os.close()

  def getHash = (new HexBinaryAdapter).marshal(md.digest())
}
{% endhighlight %}

Next we define the BodyParser by composing it from the existing Play! Multipart Formdata BodyParser.  We pass in our own customer file part handler that will contain the code that writes to the `OutputStream`.  To iterate over any Iteratee we use `fold` semantics.  Therefore, as you would expect with any other `fold`, we pass in an accumulator that will be the same type of the output value.  In this case our accumulator is effectively an `OutputStream`.  Each iteration of the fold will execute the provided accumulator operation of type `(os: Output, elDataChunk: Array[Byte]) => Output`.  `elDataChunk` will be written to the `OutputStream` using its `write` method.  The instance of `Output` is then returned as the accumulator to the next iteration.

{% highlight scala linenos=table %}
object StreamingBodyParser {

  def streamingBodyParser(streamProvider: String => Output): BodyParser[MultipartFormData[Try[StreamingSuccess]]] =
    BodyParser { request =>
      // Use Play's existing multipart parser from play.api.mvc.BodyParsers.
      // The RequestHeader object is wrapped here so it can be accessed in streamingFilePartHandler
      parse
        .multipartFormData(streamingFilePartHandler(request, streamProvider), maxLength = 1024 * 1000000 /* 1GB */)
        .apply(request)
    }

  def streamingFilePartHandler(request: RequestHeader,
                               streamProvider: String => Output): PartHandler[FilePart[Try[StreamingSuccess]]] =
    Multipart.handleFilePart {
      case Multipart.FileInfo(partName, filename, contentType) =>
        Try(streamProvider(filename)) match {
          case Success(output) =>
            val done: Iteratee[Array[Byte], Output] = Iteratee.fold(output) { (os: Output, elDataChunk: Array[Byte]) =>
              os.write(elDataChunk)
              os
            }
            done map { output =>
              output.close()
              Logger.info(s"$filename finished streaming.")
              Success(StreamingSuccess(filename, output))
            }
          case Failure(ex) =>
            Logger.error(s"Streaming the file $filename failed: ${ex.getMessage}")
            throw ex
      }
    }
}
{% endhighlight %}

In this project we don't have to do any more than to call the [`Iteratee.fold`](https://www.playframework.com/documentation/2.4.x/api/scala/index.html#play.api.libs.iteratee.Iteratee$@fold[E,A](state:A)(f:(A,E)=%3EA)(implicitec:scala.concurrent.ExecutionContext):play.api.libs.iteratee.Iteratee[E,A]) helper method.  Much of the mechanics of actually folding over the Iteratee are locked up in this method.  If you're interested in learning more about how Iteratee's work then this implementation warrants further inspection.  [Check out the `foldM` method](https://github.com/playframework/playframework/blob/2.4.6/framework/src/iteratees/src/main/scala/play/api/libs/iteratee/Iteratee.scala) (called by `Iteratee.fold`) in the Play project's source tree and inspect its implementation.

## Defining the Play Action

To create the Action you pass in a reference to the `streamingBodyParser` along with a higher order function (`streamProviderHashBytes`) that's used to instantiate the `Output` and `OutputStream`.  The HOF also takes in a `filename` parameter.  This information is parsed out of the request headers by the Multipart Form handler for us.  In the `streamingFilePartHandler` we pass it into our HOF so you can use it when building your `OutputStream` (i.e. it would be useful if you wanted to create a `FileOutputStream` to write the uploaded file to disk)

In the sample project I created a new `Output` called `Md5StreamOutput` that uses a [`DigestOutputStream`](https://docs.oracle.com/javase/8/docs/api/java/security/DigestOutputStream.html) to calculate the MD5 hash of whatever is written to it.

{% highlight scala linenos=table %}
  def streamProviderHashBytes(filename: String) = {
    val md5Digest = MessageDigest.getInstance("MD5")
    Md5StreamOutput(new DigestOutputStream(new ByteArrayOutputStream(), md5Digest), md5Digest)
  }

  // Play! Action
  def uploadToHash = Action(streamingBodyParser(streamProviderHashBytes)){ request =>
    val params = request.body.asFormUrlEncoded // you can extract request parameters for whatever your app needs
    val result = request.body.files.head.ref
    result match {
      case Success(StreamingSuccess(filename, out: Md5StreamOutput)) => Ok(out.getHash)
      case Failure(ex) => Ok(s"Streaming error occurred: ${ex.getMessage}")
    }
  }
{% endhighlight %}

## Testing

In order to test the `uploadToHash` Action we need to create a `FakeRequest` that contains an actual test input that our new BodyParser can parse.  I found a GitHub gist called [Sample upload testing in Play Framework 2.3.1](https://gist.github.com/emrecelikten/58ae4a4cb572cfaeb525) that fits the bill.  I refactored this code into an `UploadHelper` trait in the [sample project](https://github.com/seglo/play-file-upload-streaming) accompanying this post.  The spec for the `uploadToHash` Action is in `ApplicationSpec`.

You can run the ApplicationSpec test suite by running `sbt test` in the project directory.

## Run the project

You can run the project using `sbt run` and manually test the `uploadToHash` action with `curl`.  For example:

{% highlight bash %}
$ curl -i --no-keepalive -F name=spark-1.3.0-bin-hadoop2.4.tgz -F filedata=@/home/seglo/Downloads/spark-1.3.0-bin-hadoop2.4.tgz http://localhost:9000/uploadToHash
HTTP/1.1 100 Continue

HTTP/1.1 200 OK
Content-Type: text/plain; charset=utf-8
Date: Thu, 31 Dec 2015 22:30:24 GMT
Content-Length: 32

20DFFD5254A2B7E57B76A488CAB40CD8
{% endhighlight %}

## Sample Project on GitHub

To see the full sample project clone my [Play File Upload Iteratee to Java OutputStream Sample Project](https://github.com/seglo/play-file-upload-streaming) on GitHub.