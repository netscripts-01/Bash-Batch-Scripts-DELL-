#!/bin/bash
# Program name: bash_iprange_check_02.sh

for ip in x.x.x.{1..254};
do
    ping -c 4 "$ip" > /dev/null
    if [ $? -eq 0 ]; then
    echo "node $ip is up"
    else
    echo "node $ip is down"
    fi
done
