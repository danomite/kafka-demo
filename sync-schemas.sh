  #!/bin/bash
set -x
  
echo "--- Broker metdata before _schemas sync"
kcat -b localhost:29092 -L
echo "--- Syncing _schemas from ${STAGE_KBOOTSTRAP:-kafka-bootstrap-int-lb-us-west-2.stage.roktinternal.com:9092}"
kcat -b "${STAGE_KBOOTSTRAP:-kafka-bootstrap-int-lb-us-west-2.stage.roktinternal.com:9092}" -t "_schemas" -K "|" -C -e -o beginning | kcat -b "localhost:29092" -t "_schemas" -K "|" -P
echo "--- Broker metdata post _schemas sync"
kcat -b localhost:29092 -L