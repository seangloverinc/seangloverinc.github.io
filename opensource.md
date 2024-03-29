---
layout: page
title: Open Source
permalink: /opensource/
---

Open Source Software that I've authored and maintain (or have maintained in the past). I've also included some of the more significant contributions I've made to other Open Source projects. For details see my [GitHub profile](https://github.com/{{ site.github_username }}).

# Maintainer

#### [Apache Pekko](https://pekko.apache.org/) 

An open source fork of Akka incubating at Apache.

# Previously Maintained Projects

#### [Alpakka](https://github.com/akka/alpakka/) ![Maven Central Release](https://maven-badges.herokuapp.com/maven-central/com.lightbend.akka/akka-stream-alpakka-file_2.12/badge.svg)

The Alpakka project is an open source initiative to implement stream-aware, reactive, integration pipelines for Java and Scala. It is built on top of [Akka Streams](https://doc.akka.io/docs/akka/current/stream/index.html), and has been designed from the ground up to understand streaming natively and provide a DSL for reactive and stream-oriented programming, with built-in support for backpressure. Akka Streams is a [Reactive Streams](http://www.reactive-streams.org/) and JDK 9+ [java.util.concurrent.Flow](https://docs.oracle.com/javase/10/docs/api/java/util/concurrent/Flow.html)-compliant implementation and therefore [fully interoperable](https://doc.akka.io/docs/akka/current/general/stream/stream-design.html#interoperation-with-other-reactive-streams-implementations) with other implementations.

#### [Alpakka Kafka](https://github.com/akka/alpakka-kafka/) ![Maven Central Release](https://maven-badges.herokuapp.com/maven-central/com.typesafe.akka/akka-stream-kafka_2.12/badge.svg)

Alpakka Kafka lets you connect [Apache Kafka](https://kafka.apache.org/) to Akka Streams. This project was formerly known *Akka Streams Kafka* and *Reactive Kafka* originally.

#### [Akka](https://github.com/akka/akka/) (Streams) [![Latest version](https://index.scala-lang.org/akka/akka/akka-actor/latest.svg)](https://index.scala-lang.org/akka/akka/akka-actor)

Akka is a set of open-source libraries for designing scalable, resilient systems that span processor cores and networks. Akka allows you to focus on meeting business needs instead of writing low-level code to provide reliable behavior, fault tolerance, and high performance.

#### [Akka Projections](https://github.com/akka/akka-projection) ![Maven Central Release](https://maven-badges.herokuapp.com/maven-central/com.lightbend.akka/akka-projection-core_2.13/badge.svg)

[Akka Projections](https://doc.akka.io/docs/akka-projection/current/index.html) is a library used to build read side processors (read side views from event sourced journals in CQRS architectures) with a variety of sources, processing options, and message delivery semantics. 

#### [Cloudflow](https://github.com/lightbend/cloudflow) (Akka Data Pipelines)

[Cloudflow](https://cloudflow.io/) enables you to quickly develop, orchestrate, and operate distributed streaming applications on Kubernetes. I was a member of the original team that developed and open sourced the Cloudflow framework (see [first commit](https://github.com/lightbend/cloudflow/commit/6c8b9da3ad8ce160b25dac968ac020a2a4e26cc2)).

#### [Kafka Lag Exporter](https://github.com/lightbend/kafka-lag-exporter) ![GitHub release](https://img.shields.io/github/release-pre/lightbend/kafka-lag-exporter.svg)

I open sourced Kafka Lag Exporter to help users monitor Kafka consumer group lag & latency in their [Apache Kafka](https://kafka.apache.org/) apps. An [Akka Typed](https://doc.akka.io/docs/akka/current/typed/index.html) application that runs on [Kubernetes](https://kubernetes.io/) and exports [Promtheus](https://prometheus.io/) metrics. Introduced in the following blog post: [Monitor Kafka Consumer Group Latency with Kafka Lag Exporter](https://www.lightbend.com/blog/monitor-kafka-consumer-group-latency-with-kafka-lag-exporter).

# Author

#### [`connect-prism`](https://github.com/seglo/connect-prism) [![NPM version](https://badge.fury.io/js/connect-prism.svg)](http://badge.fury.io/js/connect-prism)

I'm the author of the node.js [connect-prism](https://github.com/seglo/connect-prism) and [grunt-connect-prism](https://github.com/seglo/grunt-connect-prism) libraries.  Use prism to record, mock, and proxy HTTP traffic as middleware with the connect middleware framework.

#### [`learning-spark`](https://github.com/seglo/learning-spark)

A set of three end-to-end [Apache Spark](https://spark.apache.org/) Streaming applications I've used in presentations to teach people about Spark.

#### [`exactly-once-streams`](https://github.com/seglo/exactly-once-streams)

An engineering report and a set of PoC's that demonstrate "Exactly Once" message delivery semantics in [Apache Kafka](https://kafka.apache.org/) using Kafka base clients, Kafka Streams, and [Alpakka Kafka](https://doc.akka.io/docs/alpakka-kafka/current/home.html).

# Contributions

Noteworthy contributions over the years. This is not an exhaustive list of contributions.

* [Testcontainers](https://www.testcontainers.org) - Apache Kafka containerized cluster for testing - [PR](https://github.com/testcontainers/testcontainers-java/pull/1984)
* [Akka Projections](https://github.com/akka/akka-projection) - Core engineer in initial release - [v1.0.0 Release Notes](https://github.com/akka/akka-projection/releases/tag/v1.0.0)
* [Akka](https://github.com/akka/akka/)/[Alpakka Kafka](https://github.com/akka/alpakka-kafka/) - Alpakka Kafka support for canonical impl. of a [External Shard Allocation Strategy](https://doc.akka.io/docs/akka/current/typed/cluster-sharding.html#external-shard-allocation) for Akka Cluster - [PR](https://github.com/akka/alpakka-kafka/pull/1067)
* [Akka](https://github.com/akka/akka/) - BoundedSourceQueue API for Akka Streams - [PR](https://github.com/akka/akka/pull/29770)
* [Akka](https://github.com/akka/akka/) - Context mapping strategies (proposal only) - [PR](https://github.com/akka/akka/pull/28712)
* [Alpakka Kafka](https://github.com/akka/alpakka-kafka/) - Rewrite Alpakka Kafka partitioned sources - [PR](https://github.com/akka/alpakka-kafka/pull/930)
* [Alpakka Kafka](https://github.com/akka/alpakka-kafka/) - [Add Kafka testcontainer support to Alpakka Kafka testkit](https://doc.akka.io/docs/alpakka-kafka/current/testing-testcontainers.html) - [PR](https://github.com/akka/alpakka-kafka/pull/939)
* [Apache Kafka](https://kafka.apache.org/) - KafkaConsumer should not throw away already fetched data for paused partitions - [Jira](https://issues.apache.org/jira/browse/KAFKA-7548), [PR #1](https://github.com/apache/kafka/pull/6988), [PR #2](https://github.com/apache/kafka/pull/7221), [PR #3](https://github.com/apache/kafka/pull/7228)
* [Akka](https://github.com/akka/akka/) - Log messages DSL for Akka Typed - [PR](https://github.com/akka/akka/pull/26238), [Docs](https://doc.akka.io/api/akka/current/akka/actor/typed/scaladsl/Behaviors$.html#logMessages[T](logOptions:akka.actor.typed.LogOptions,behavior:akka.actor.typed.Behavior[T]):akka.actor.typed.Behavior[T])
* [Strimzi](https://strimzi.io/) - Helm Chart for Strimzi - [PR](https://github.com/strimzi/strimzi-kafka-operator/pull/565), [Docs](https://strimzi.io/docs/master/#deploying-cluster-operator-helm-chart-str)
* [Alpakka Kafka](https://github.com/akka/alpakka-kafka/) - Apache Kafka Transactions Support - [PR #1](https://github.com/akka/alpakka-kafka/pull/420), [PR #2](https://github.com/akka/alpakka-kafka/pull/481), [Docs](https://doc.akka.io/docs/akka-stream-kafka/current/transactions.html)
* [Apache Kafka](https://kafka.apache.org/) - Scala DSL for Kafka Streams (collaboration with [Debasish Ghosh](https://twitter.com/debasishg)) - [PR #1](https://github.com/apache/kafka/pull/4756) ([Commit](https://github.com/apache/kafka/commit/345abf7ff440a178c8ebd008c64bb933c8d711ad)), [PR #2](https://github.com/apache/kafka/pull/4949), [KIP-270](https://cwiki.apache.org/confluence/display/KAFKA/KIP-270+-+A+Scala+Wrapper+Library+for+Kafka+Streams), [Docs](https://kafka.apache.org/22/documentation/streams/developer-guide/dsl-api.html#scala-dsl)
* [Play! Web Framework](https://www.playframework.com/) - Relative and Canonical URL Path Support - [PR](https://github.com/playframework/playframework/pull/7839), [Docs](https://www.playframework.com/documentation/2.6.x/ScalaRouting#Relative-routes)
