#!/bin/bash


cd ~/Documents/Scripts/sFlow_Config

cat ips.txt | while read "ip"
do
    expect -f ~/Documents/Scripts/sFlow_Config/sFlow_Indvid_Config.expect $ip

done
