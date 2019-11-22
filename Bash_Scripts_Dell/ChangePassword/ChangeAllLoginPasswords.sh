
#!/usr/bin/expect -f

set ip_file "ips.txt"
set fid [open $ip_file r]

while {[gets $fid ip] != -1} {

spawn ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no [loginacct]@$ip
sleep 3
expect "*?assword"
sleep 3
send "[existing user password to change]"
sleep 3
expect ">"
sleep 2
send "password\r"
sleep 2
expect "Enter old password:*********"
send "[existing user password to change]\r"
sleep 2
expect "Enter new password:*********"
send "[new user password required]t\r"
sleep 2
expect "Confirm new password:*********"
send "[new user password required]\r"
sleep 2
expect "Password Changed!"
sleep 2
expect ">"  
send "enable\r"
sleep 3
expect "*?assword"
sleep 2
send  "[password for enable function]\r"
sleep 3
expect "#"
sleep 2
send "write\r"
sleep 2
expect "Are you sure you want to save? (y/n)"
sleep 2
send "y\r"
sleep 5
expect "Configuration Saved!"
sleep 2
send "exit\r"
expect ">"
send -- "exit\r"

expect eof

}
close $fid
