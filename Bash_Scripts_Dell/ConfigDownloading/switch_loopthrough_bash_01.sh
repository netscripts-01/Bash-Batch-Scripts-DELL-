#!/bin/bash

name=$(date +%T_%d-%b-%Y)

cd ~/Desktop
mkdir "$name"
cd ~/Documents/Scripts/CRON_JOBS

cat ips.txt | while read "ip"
do
    expect -f ~/Documents/Scripts/CRON_JOBS/switch_config_bkp.expect $ip

    cd ~/Desktop
    cp /var/lib/tftpboot/backup ~/Desktop/$name/$ip

done
