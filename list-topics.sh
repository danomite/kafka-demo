#!/bin/bash
set -x

echo "listing topics..."
kafka-topics --bootstrap-server localhost:29092 --list
