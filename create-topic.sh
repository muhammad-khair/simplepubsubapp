#!/usr/bin/env bash

NETWORK=simplepubsubapp_default
KAFKAS="kafka1:9092, kafka2:9092, kafka3:9092"
ZOOKEEPERS="zookeeper1, zookeeper2, zookeeper3"
TOPIC="$1"

docker run \
    --rm -i \
    --network="$NETWORK" \
    wurstmeister/kafka kafka-topics.sh \
    --create \
    --topic "$TOPIC" \
    --partitions 1 \
    --replication-factor 3 \
    --zookeeper "$ZOOKEEPERS"
