---
layout: post
title: How Alpakka Uses Flow Control Optimizations In Apache Kafka 2.4
date: 2020-01-26
categories:
- Alpakka Kafka
- Apache Kafka
- Akka Streams
tags:
- alpakka
- kafka
- akka-streams
status: publish
type: post
published: true
share_url: http://seanglover.com
author:
  login: seglo
  email: sean@seanglover.com
  display_name: Sean Glover
  first_name: Sean
  last_name: Glover
excerpt: !ruby/object:Hpricot::Doc
---

#### [Link to post on Lightbend's blog](https://www.lightbend.com/blog/alpakka-kafka-flow-control-optimizations)

This blog post begins with details about how the Kafka Consumer and [Alpakka Kafka](https://github.com/akka/alpakka-kafka) internals are designed to facilitate asynchronous polling and back-pressure. We’ll discuss how the Consumer’s flow control mechanisms were improved in [KAFKA-7548](https://issues.apache.org/jira/browse/KAFKA-7548) to provide better performance. We conclude with some benchmarks that demonstrate the performance improvements before and after the new Consumer is used.