---
layout: post
title: Working with JSON in Play!
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
You're a web developer, and as a web developer you're going to work with JSON.  Nobody cares that it doesn't have a schema (Json Schema doesn't count).  It's pretty concise, but it ain't no YAML or HOCON.  You're not going Avro your way out of this one.  Nor will your versioned, `Thrift`y, datastructures be of any use.  As a web developer you've accepted the fact that the front end runs on JSON and there's nothing you can do about.  So how do we make it more tolerable in Play?  Well, fortunately you have `play-json` and framework assists.  Let's get started.

## JSON Writes

To serialize JSON we'll need to define a serializer for our ADT.  In play-json this is implemented as the `Writes[T]` type.  When you serialize a value you're essentially performing the action `Writes[T] => JsResult[T]`, where `JsResult` is a `JsFailure` or `JsSuccess` which contains a `JsObject` you can further stringify to get raw JSON.  

Play provides a few different ways to define your `Writes[T]`.  You can instantiate it yourself or use their nifty [`Combinators`]() DSL to do it for you.  Here's an example of the Combinators from Play's docs. 

{% highlight scala linenos=table %}
import play.api.libs.json._ // JSON library
import play.api.libs.json.Reads._ // Custom validation helpers
import play.api.libs.functional.syntax._ // Combinator syntax

case class Location(lat: Double, long: Double)

implicit val locationReads: Reads[Location] = (
  (JsPath \ "lat").read[Double] and
  (JsPath \ "long").read[Double]
)(Location.apply _)
{% endhighlight %}

The `play-json` imports bring in a whole world of types.

* `play.api.libs.json._` contains your core JS types such as JsObj, JsArray, JsNull, etc.  It also defines the `Reads[T]` and `Writes[A]` types.
* `play.api.libs.json.Reads._` provides a ton of validators used when you deserialize or read in JSON.  We'll talk more about this later.
* `import play.api.libs.functional.syntax._` 

So you have this wonderful domain object chalked full of Scala goodness in the form of Option's, Variant types, and the like.  Obviously we l 

## JSON Writes

### Complicated writes involving polymorphic types, options, and other Scala language features that don't translate well to JSON.

## JSON Reads

## Validation

## Putting it into Action

## Testing

One of the cool things about serialization is that we can easily test a property of our code for correctness.  Instead of testing serialization or deserialization separately you can assert that what you serialize and then deserialize back is the same as what you had originally serialized.  This property is known as ["there and back again"](), and can be applied with any input.  If there's a failure then your validation rules should be able to tell you exactly where the problem lies.