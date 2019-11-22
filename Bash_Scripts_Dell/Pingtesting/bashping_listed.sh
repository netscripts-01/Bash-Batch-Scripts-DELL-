#!/bin/bash
# Program name: bashpingall.sh - reads ip adress from a file nemade ips.txt
date
cat ips.txt | while read output
do
    ping -c 4 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "node $output is up"
    else
    echo "node $output is down"
    fi
done
