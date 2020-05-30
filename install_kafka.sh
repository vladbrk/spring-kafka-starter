#!/bin/bash

mkdir download
cd download

wget http://mirror.linux-ia64.org/apache/zookeeper/zookeeper-3.6.1/apache-zookeeper-3.6.1-bin.tar.gz
wget https://apache-mirror.rbc.ru/pub/apache/kafka/2.5.0/kafka_2.12-2.5.0.tgz

tar -zxvf apache-zookeeper-3.6.1-bin.tar.gz
tar -zxvf kafka_2.12-2.5.0.tgz

cd ~
IdeaProjects/spring-kafka-starter/download/kafka_2.12-2.5.0/bin/zookeeper-server-start.sh IdeaProjects/spring-kafka-starter/dnload/kafka_2.12-2.5.0/config/zookeeper.properties
IdeaProjects/spring-kafka-starter/download/kafka_2.12-2.5.0/bin/kafka-server-start.sh IdeaProjects/spring-kafka-starter/download/kafka_2.12-2.5.0/config/server.properties

# Producer's terminal
IdeaProjects/spring-kafka-starter/download/kafka_2.12-2.5.0/bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic test
# Consumr's terminal
IdeaProjects/spring-kafka-starter/download/kafka_2.12-2.5.0/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning