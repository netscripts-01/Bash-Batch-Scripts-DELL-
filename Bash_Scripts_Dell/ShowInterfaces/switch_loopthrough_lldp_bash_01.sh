#!/bin/bash

name=$(date +%T_%d-%b-%Y)

cd ~/Documents/lldp/LLDP_GRAB_SCRIPT

cat ips.txt | while read "ip"
do
    expect -f ~/Documents/lldp/LLDP_GRAB_SCRIPT/lldp_get.expect $ip | tee "$ip".txt

done
