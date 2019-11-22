#!/usr/bin/expect -f

spawn ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no proleitadmin-sgo@172.20.200.198
sleep 3
expect "*?assword"
sleep 3
send "Purpl3st\r"
sleep 3
expect ">"
sleep 3
send "enable\r"
sleep 3
expect "*?assword"
sleep 3
send "Start123\r"
sleep 3
expect "#"
sleep 2
send "config\r"
sleep 2
send "snmp-server community datafetching ro ipaddress 172.20.1.54\r"
sleep 2
expect "#"
sleep 2
send "exit\r"
sleep 2
expect "#"
sleep 2
send "exit\r"
sleep 2
expect ">"
sleep 2
send -- "exit\r"
sleep 2

expect eof
