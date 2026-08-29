---
layout: page
title: Open Source
permalink: /opensource/
---

Open Source Software that I've authored and maintain (or have maintained in the past). I've also included some of the more significant contributions I've made to other Open Source projects. For details see my [GitHub profile](https://github.com/{{ site.github_username }}).

# Maintainer

#### [`apache/pekko`](https://pekko.apache.org/) 

An open source fork of Akka after it's change to a non-Apache license. Graduated to top level project.

# Previously Maintained Projects

#### [`akka/alpakka`](https://github.com/akka/alpakka/)

The Alpakka project is an open source initiative to implement stream-aware, reactive, integration pipelines for Java and Scala. It is built on top of [Akka Streams](https://doc.akka.io/docs/akka/current/stream/index.html), and has been designed from the ground up to understand streaming natively and provide a DSL for reactive and stream-oriented programming, with built-in support for backpressure. Akka Streams is a [Reactive Streams](http://www.reactive-streams.org/) and JDK 9+ [java.util.concurrent.Flow](https://docs.oracle.com/javase/10/docs/api/java/util/concurrent/Flow.html)-compliant implementation and therefore [fully interoperable](https://doc.akka.io/docs/akka/current/general/stream/stream-design.html#interoperation-with-other-reactive-streams-implementations) with other implementations.

#### [`akka/alpakka-kafka`](https://github.com/akka/alpakka-kafka/)

Alpakka Kafka lets you connect [Apache Kafka](https://kafka.apache.org/) to Akka Streams. This project was formerly known *Akka Streams Kafka* and *Reactive Kafka* originally.

#### [`akka/akka-core`](https://github.com/akka/akka-core) (Streams)

Akka is a set of open-source libraries for designing scalable, resilient systems that span processor cores and networks. Akka allows you to focus on meeting business needs instead of writing low-level code to provide reliable behavior, fault tolerance, and high performance.

#### [`akka/akka-projection`](https://github.com/akka/akka-projection)

[Akka Projections](https://doc.akka.io/docs/akka-projection/current/index.html) is a library used to build read side processors (read side views from event sourced journals in CQRS architectures) with a variety of sources, processing options, and message delivery semantics. 

#### [`lightbend/cloudflow`](https://github.com/lightbend/cloudflow) (Akka Data Pipelines)

[Cloudflow](https://cloudflow.io/) enables you to quickly develop, orchestrate, and operate distributed streaming applications on Kubernetes. I was a member of the original team that developed and open sourced the Cloudflow framework (see [first commit](https://github.com/lightbend/cloudflow/commit/6c8b9da3ad8ce160b25dac968ac020a2a4e26cc2)).

# Author

#### [`kafka-lag-exporter`](https://github.com/seglo/kafka-lag-exporter)

##### Blog post: [Monitor Kafka Consumer Group Latency with Kafka Lag Exporter](https://web.archive.org/web/20190601000000/https://www.lightbend.com/blog/monitor-kafka-consumer-group-latency-with-kafka-lag-exporter)

I open sourced Kafka Lag Exporter to help users monitor Kafka consumer group lag & latency in their [Apache Kafka](https://kafka.apache.org/) apps. An [Akka Typed](https://doc.akka.io/docs/akka/current/typed/index.html) application that runs on [Kubernetes](https://kubernetes.io/) and exports [Promtheus](https://prometheus.io/) metrics.

#### [`connect-prism`](https://github.com/seglo/connect-prism)

##### [Introductory Post](https://seanglover.com/blog/2014/06/record-mock-and-proxy-http-requests-with-grunt-connect-prism), [v0.4.0 Features](https://seanglover.com/blog/2014/07/new-features-in-connect-prism-0-4-0)

I'm the author of the node.js [connect-prism](https://github.com/seglo/connect-prism) and [grunt-connect-prism](https://github.com/seglo/grunt-connect-prism) libraries.  Use prism to record, mock, and proxy HTTP traffic as middleware with the connect middleware framework.

#### [`learning-spark`](https://github.com/seglo/learning-spark)

A set of three end-to-end [Apache Spark](https://spark.apache.org/) Streaming applications I've used in presentations to teach people about Spark.

#### [`exactly-once-streams`](https://github.com/seglo/exactly-once-streams)

An engineering report and a set of PoC's that demonstrate "Exactly Once" message delivery semantics in [Apache Kafka](https://kafka.apache.org/) using Kafka base clients, Kafka Streams, and [Alpakka Kafka](https://doc.akka.io/docs/alpakka-kafka/current/home.html).

# Contributions

Noteworthy contributions over the years. This is not an exhaustive list of contributions.
<div class="contributions" markdown="1">

| Project | Contribution | Pull Request(s) | Artifacts |
|---|---|---|---|
| [`livekit/agents`](https://github.com/livekit/agents) | Discovered CWE-532 vulnerability: API secrets exposed in plaintext in certain crash scenarios | [PR #1](https://github.com/livekit/agents/pull/5282)<br>[PR #2](https://github.com/livekit/agents/pull/5300) | [GHSA-fr59-pwc6-3phm](https://github.com/livekit/agents/security/advisories/GHSA-fr59-pwc6-3phm)<br>Fixed in [v1.5.2](https://github.com/livekit/agents/releases/tag/livekit-agents%401.5.2) |
| [`kamon`](https://github.com/kamon-io/Kamon) | Finagle client instrumentation | [PR](https://github.com/kamon-io/Kamon/pull/1096) | — |
| [`kamon`](https://github.com/kamon-io/Kamon) | DataDog Trace HTTP Propagation | [PR](https://github.com/kamon-io/Kamon/pull/1145) | — |
| [`kafka`](https://github.com/apache/kafka) | KIP-489: Kafka Consumer Record Latency Metric | — | [KIP-489](https://cwiki.apache.org/confluence/display/KAFKA/489%3A+Kafka+Consumer+Record+Latency+Metric)<br>[KAFKA-8656](https://issues.apache.org/jira/browse/KAFKA-8656) |
| [`testcontainers-java`](https://github.com/testcontainers/testcontainers-java) | Apache Kafka containerized cluster for testing | [PR](https://github.com/testcontainers/testcontainers-java/pull/1984) | — |
| [`akka-projection`](https://github.com/akka/akka-projection) | Core engineer in initial release | — | [v1.0.0 Release Notes](https://github.com/akka/akka-projection/releases/tag/v1.0.0) |
| [`akka-core`](https://github.com/akka/akka-core)<br>[`alpakka-kafka`](https://github.com/akka/alpakka-kafka/) | External Shard Allocation Strategy for Akka Cluster | [PR](https://github.com/akka/alpakka-kafka/pull/1067) | — |
| [`akka-core`](https://github.com/akka/akka-core) | BoundedSourceQueue API for Akka Streams | [PR](https://github.com/akka/akka-core/pull/29770) | — |
| [`akka-core`](https://github.com/akka/akka-core) | Context mapping strategies | [PR](https://github.com/akka/akka-core/pull/28712) | Proposal only |
| [`alpakka-kafka`](https://github.com/akka/alpakka-kafka/) | Rewrite partitioned sources | [PR](https://github.com/akka/alpakka-kafka/pull/930) | — |
| [`alpakka-kafka`](https://github.com/akka/alpakka-kafka/) | Kafka testcontainer support in testkit | [PR](https://github.com/akka/alpakka-kafka/pull/939) | [Docs](https://doc.akka.io/docs/alpakka-kafka/current/testing-testcontainers.html) |
| [`kafka`](https://github.com/apache/kafka) | Don't discard fetched data for paused partitions | [PR #1](https://github.com/apache/kafka/pull/6988)<br>[PR #2](https://github.com/apache/kafka/pull/7221)<br>[PR #3](https://github.com/apache/kafka/pull/7228) | [KAFKA-7548](https://issues.apache.org/jira/browse/KAFKA-7548)<br>**[Blog post](https://web.archive.org/web/20200204000000/https://www.lightbend.com/blog/alpakka-kafka-flow-control-optimizations)** |
| [`akka-core`](https://github.com/akka/akka-core) | Log messages DSL for Akka Typed | [PR](https://github.com/akka/akka-core/pull/26238) | [Docs](https://doc.akka.io/api/akka/current/akka/actor/typed/scaladsl/Behaviors$.html#logMessages) |
| [`strimzi-kafka-operator`](https://github.com/strimzi/strimzi-kafka-operator) | Helm Chart for Strimzi | [PR](https://github.com/strimzi/strimzi-kafka-operator/pull/565) | [Docs](https://strimzi.io/docs/master/#deploying-cluster-operator-helm-chart-str) |
| [`alpakka-kafka`](https://github.com/akka/alpakka-kafka/) | Apache Kafka Transactions support | [PR #1](https://github.com/akka/alpakka-kafka/pull/420)<br>[PR #2](https://github.com/akka/alpakka-kafka/pull/481) | [Docs](https://doc.akka.io/docs/akka-stream-kafka/current/transactions.html) |
| [`kafka`](https://github.com/apache/kafka) | KIP-270: Scala DSL for Kafka Streams | [PR #1](https://github.com/apache/kafka/pull/4756)<br>[PR #2](https://github.com/apache/kafka/pull/4949) | [KIP-270](https://cwiki.apache.org/confluence/display/KAFKA/KIP-270+-+A+Scala+Wrapper+Library+for+Kafka+Streams)<br>[KAFKA-6670](https://issues.apache.org/jira/browse/KAFKA-6670)<br>[Docs](https://kafka.apache.org/39/streams/developer-guide/dsl-api/#kafka-streams-dsl-for-scala)<br>Collab with [Debasish Ghosh](https://twitter.com/debasishg) |
| [`playframework`](https://github.com/playframework/playframework) | Relative and Canonical URL Path support | [PR](https://github.com/playframework/playframework/pull/7839) | [Docs](https://www.playframework.com/documentation/2.6.x/ScalaRouting#Relative-routes) |

</div>
