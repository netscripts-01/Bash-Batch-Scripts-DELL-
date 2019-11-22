#!/usr/bin/expect -f


set ip "[switch ip address]"
set bkpdir "bkpdir_[exec date +%H-%M-%S_%d-%b-%Y]"
set filename "[$ip]_[exec date +%H-%M-%S_%d-%b-%Y]"
cd "~/Desktop/"
expect "$"
exec mkdir "$bkpdir"
expect "$"
sleep 3

spawn ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no [user]@$ip
sleep 3
expect "*?assword"
sleep 3
send "[user password]\r"
sleep 3
expect ">"
sleep 3
send "enable\r"
sleep 3
expect "*?assword"
sleep 3
send "[enable function password]\r"
sleep 3
expect "#"
sleep 2
send "copy running-config tftp://x.x.x.x/backup\r"
sleep 3
expect "Are you sure you want to start?"
sleep 2
send "y\r"
sleep 2
expect "#"
sleep 2
send "exit\r"
sleep 2
expect ">"
sleep 2
send -- "exit\r"
sleep 2

exec mv /var/lib/tftpboot/backup ~/Desktop/$bkpdir

expect eof


