#!/bin/bash
set -x

echo "Producing messages ..."
kcat -P -b localhost:29092 -t kafkaDemo.TestTopic2 << EOF
{"_id":"5c4b2b45ab234c86955f0802","index":0,"guid":"d3637b06-9940-4958-9f82-639001c14c34"}
{"_id":"5c4b2b459ffa9bb0c0c249e1","index":1,"guid":"08612fb5-40a7-45e5-9ff2-beb89a1b2835"}
{"_id":"5c4b2b4545d7cbc7bf8b6e3e","index":2,"guid":"4880280a-cf8b-4884-881e-7b64ebf2afd0"}
{"_id":"5c4b2b45dab381e6b3024c6d","index":3,"guid":"36d04c26-0dae-4a8e-a66e-bde9b3b6a745"}
{"_id":"5c4b2b45d1103ce30dfe1947","index":4,"guid":"14d53f2c-def3-406f-9dfb-c29963fdc37e"}
{"_id":"5c4b2b45d6d3b5c51d3dacb7","index":5,"guid":"a20cfc3a-934a-4b93-9a03-008ec651b5a4"}
EOF
