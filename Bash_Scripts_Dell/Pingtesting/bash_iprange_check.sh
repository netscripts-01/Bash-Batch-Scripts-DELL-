#!/bin/bash
# Program name: bash_iprange_check.sh

for ip in x.x.x.{1..254}; do ping -c 1 -t 1 $ip > /dev/null && echo "${ip} is up";
done
