---
layout: page
title: Open Source
permalink: /opensource/
---

Open source software that I've authored and some of my more significant contributions to other projects. For details see my [GitHub profile](https://github.com/seglo/).

# Author

#### [`kafka-lag-exporter`](https://github.com/lightbend/kafka-lag-exporter) ![GitHub release](https://img.shields.io/github/release-pre/lightbend/kafka-lag-exporter.svg)

I open sourced Kafka Lag Exporter to help users monitor Kafka consumer group lag & latency in their [Apache Kafka](https://kafka.apache.org/) apps. An [Akka Typed](https://doc.akka.io/docs/akka/current/typed/index.html) application that runs on [Kubernetes](https://kubernetes.io/) and exports [Promtheus](https://prometheus.io/) metrics. Introduced in the following blog post: [Monitor Kafka Consumer Group Latency with Kafka Lag Exporter](https://www.lightbend.com/blog/monitor-kafka-consumer-group-latency-with-kafka-lag-exporter).

#### [`connect-prism`](https://github.com/seglo/connect-prism) [![NPM version](https://badge.fury.io/js/connect-prism.svg)](http://badge.fury.io/js/connect-prism)

I'm the author of the node.js [connect-prism](https://github.com/seglo/connect-prism) and [grunt-connect-prism](https://github.com/seglo/grunt-connect-prism) libraries.  Use prism to record, mock, and proxy HTTP traffic as middleware with the connect middleware framework.

#### [`learning-spark`](https://github.com/seglo/learning-spark)

A set of three end-to-end [Apache Spark](https://spark.apache.org/) Streaming applications I've used in presentations to teach people about Spark.

#### [`exactly-once-streams`](https://github.com/seglo/exactly-once-streams)

An engineering report and a set of PoC's that demonstrate "Exactly Once" message delivery semantics in [Apache Kafka](https://kafka.apache.org/) using Kafka base clients, Kafka Streams, and [Alpakka Kafka](https://doc.akka.io/docs/alpakka-kafka/current/home.html).

# Contributions

## 2019

* [Apache Kafka](https://kafka.apache.org/) - KafkaConsumer should not throw away already fetched data for paused partitions - [Jira](https://issues.apache.org/jira/browse/KAFKA-7548), [PR #1](https://github.com/apache/kafka/pull/6988), [PR #2](https://github.com/apache/kafka/pull/7221), [PR #3](https://github.com/apache/kafka/pull/7228)
* [Akka](https://github.com/akka/akka/) - Log messages DSL for Akka Typed - [PR](https://github.com/akka/akka/pull/26238), [Docs](https://doc.akka.io/api/akka/current/akka/actor/typed/scaladsl/Behaviors$.html#logMessages[T](logOptions:akka.actor.typed.LogOptions,behavior:akka.actor.typed.Behavior[T]):akka.actor.typed.Behavior[T])

## 2018

* [Strimzi](https://strimzi.io/) - Grafana Monitoring Dashboards for Apache Kafka and ZooKeeper - [PR](https://github.com/strimzi/strimzi-kafka-operator/pull/877), [Docs](https://strimzi.io/docs/master/#metrics-str)
* [Strimzi](https://strimzi.io/) - Helm Chart for Strimzi - [PR](https://github.com/strimzi/strimzi-kafka-operator/pull/565), [Docs](https://strimzi.io/docs/master/#deploying-cluster-operator-helm-chart-str)
* [Alpakka Kafka](https://doc.akka.io/docs/alpakka-kafka/current/home.html) - Apache Kafka Transactions Support - [PR #1](https://github.com/akka/alpakka-kafka/pull/420), [PR #2](https://github.com/akka/alpakka-kafka/pull/481), [Docs](https://doc.akka.io/docs/akka-stream-kafka/current/transactions.html)
* [Apache Kafka](https://kafka.apache.org/) - Scala DSL for Kafka Streams (collaboration with [Debasish Ghosh](https://twitter.com/debasishg)) - [PR #1](https://github.com/apache/kafka/pull/4756), [PR #2](https://github.com/apache/kafka/pull/4949), [KIP-270](https://cwiki.apache.org/confluence/display/KAFKA/KIP-270+-+A+Scala+Wrapper+Library+for+Kafka+Streams), [Docs](https://kafka.apache.org/22/documentation/streams/developer-guide/dsl-api.html#scala-dsl)

## 2017

* [Play! Web Framework](https://www.playframework.com/) - Relative and Canonical URL Path Support - [PR](https://github.com/playframework/playframework/pull/7839), [Docs](https://www.playframework.com/documentation/2.6.x/ScalaRouting#Relative-routes)
