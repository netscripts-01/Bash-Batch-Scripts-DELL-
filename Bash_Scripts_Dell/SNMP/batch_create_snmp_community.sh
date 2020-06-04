#!/bin/bash


cd ~/Documents/Scripts/SNMP/BatchCreateDelete_SNMP

cat ips.txt | while read "ip"
do
    expect -f ~/Documents/Scripts/SNMP/BatchCreateDelete_SNMP/create_snmp_user.expect $ip

done
