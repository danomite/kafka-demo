#!/bin/bash
set -x

echo "Consuming messages ..."
kcat -C -b localhost:29092 -o beginning -G my-consumer kafkaDemo.TestTopic2