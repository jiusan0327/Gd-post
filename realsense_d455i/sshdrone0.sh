#!/usr/bin/expect
spawn ssh drone0@192.168.0.100
expect "drone0@192.168.0.100's password:"
send "drone0\r"
sleep 2

send "sudo chmod 777 /dev/ttyTHS1\r"
sleep 2
send "drone0\r"
sleep 3
send "roslaunch px4_realsense_bridge mypx4.launch\r"

interact


