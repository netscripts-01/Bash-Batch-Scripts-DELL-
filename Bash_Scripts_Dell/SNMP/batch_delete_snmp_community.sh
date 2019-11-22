#!/bin/bash


cd ~/Documents/Scripts/SNMP/BatchCreateDelete_SNMP

cat ips.txt | while read "ip"
do
    expect -f ~/Documents/Scripts/SNMP/BatchCreateDelete_SNMP/delete_snmp_user_proleit.expect $ip

done
