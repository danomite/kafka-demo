#!/bin/bash
set -x

echo "Producing messages ..."
kcat -P -b localhost:29092 -t kafkaDemo.TestTopic2 << EOF
1,Sauncho,Attfield,sattfield0@netlog.com,Male,221.119.13.246
2,Luci,Harp,lharp1@wufoo.com,Female,161.14.184.150
3,Hanna,McQuillan,hmcquillan2@mozilla.com,Female,214.67.74.80
4,Melba,Lecky,mlecky3@uiuc.edu,Female,158.112.18.189
5,Mordecai,Hurdiss,mhurdiss4@rambler.ru,Male,175.123.45.143
EOF