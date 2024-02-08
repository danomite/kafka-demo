#!/bin/bash
set -x

echo "Creating topics ..."
kafka-topics --bootstrap-server localhost:29092 --create --topic "kafkaDemo.TestTopic"