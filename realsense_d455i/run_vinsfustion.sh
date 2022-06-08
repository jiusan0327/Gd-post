#!/bin/bash
echo 'vins-funstion with config d455 Start!'
echo 'roscore'
gnome-terminal --tab --title="launch d455" --command="bash -c 'roscore; $SHELL'"
echo 'master wait '
sleep 1s
echo 'master finish '

echo 'open d455'
gnome-terminal --tab --title="launch d455" --command="bash -c 'roslaunch realsense2_camera rs_camera.launch; $SHELL'"
echo 'd455 wait'
sleep 5s
echo 'd455 finish'

echo 'roslaunch vins-rviz'
gnome-terminal --tab --title="launch rviz" --command="bash -c 'roslaunch vins vins_rviz.launch ; $SHELL'"
echo 'wait '
sleep 5s
echo 'vins-rviz finish '

echo 'start vinsnode'
gnome-terminal --tab --title="launch rviz" --command="bash -c 'rosrun vins vins_node /home/jiusan/realsense_d455i/realsense_stereo_imu_config.yaml ; $SHELL'"
echo 'wait '
sleep 5s
echo 'demo finish '
