---
layout: post
title: Monitor Kafka Consumer Group Latency with Kafka Lag Exporter
date: 2019-05-07
categories:
- Kafka Lag Exporter
- Apache Kafka
- Helm
- Strimzi
- Kubernetes
tags:
- kafka-lag-exporter
- kafka
- strimzi
- kubernetes
- grafana
- monitoring
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

#### [Original post on Lightbend's blog](https://www.lightbend.com/blog/monitor-kafka-consumer-group-latency-with-kafka-lag-exporter), [Archived PDF](/assets/Monitor%20Kafka%20Consumer%20Group%20Latency%20with%20Kafka%20Lag%20Exporter%20_%20Lightbend.pdf)

A blog post introducing [Kafka Lag Exporter](https://github.com/lightbend/kafka-lag-exporter), a tool to make it easy to view consumer group metrics using Kubernetes, Prometheus, and Grafana. Kafka Lag Exporter can run anywhere, but it provides features to run easily on Kubernetes clusters against Strimzi Kafka clusters using the Prometheus and Grafana monitoring stack.
