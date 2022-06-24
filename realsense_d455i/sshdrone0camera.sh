#!/usr/bin/expect
spawn ssh drone0@192.168.0.100
expect "drone0@192.168.0.100's password:"
send "drone0\r"
sleep 2

send "roslaunch realsense2_camera rs_camera.launch\r"
sleep 2
interact


