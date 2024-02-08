#!/bin/bash
set -x

echo "Producing messages ..."
kcat -P -b localhost:29092 -t kafkaDemo.TestTopic2 << EOF
{"random-stuff":"blah, blah","junk": "lots of junk!"}
{"cool","isn't it?","somekey":"what is this?"}
EOF
