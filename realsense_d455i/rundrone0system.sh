#!/bin/bash
echo 'drone0 on'
echo 'roscore'
gnome-terminal --window  --title="gound roscore" --command="bash -c 'roscore; $SHELL'"
echo 'master wait '
sleep 1s
echo 'master finish '

echo 'connect drone0 mavros'
gnome-terminal --window  --title="drone0_mavros" --command="bash -c './sshdrone0.sh; $SHELL'"
sleep 1s
echo 'mavros finish '

sleep 2s
echo 'connect drone0 d455'
gnome-terminal --window  --title="drone0_d455" --command="bash -c './sshdrone0camera.sh; $SHELL'"
sleep 2s
echo 'd455 finish '

echo 'connect QGC'
gnome-terminal --window  --title="QGC" --command="bash -c 'cd ~/Downloads;./QGroundControl.AppImage; $SHELL'"
sleep 2s
echo 'QGC finish '

echo 'connect vins rviz'
gnome-terminal --window  --title="vins-rviz" --command="bash -c 'cd ~/ego_planner_swarm_ws;source devel/setup.bash;roslaunch vins rviz.launch; $SHELL'"
sleep 3s
echo 'rviz finish '

echo 'vins-fusion start'
gnome-terminal --window  --title="vins-fusion" --command="bash -c 'roslaunch vins vins_fusion.launch ; $SHELL'"
sleep 2s
echo 'vins-fusion finish '

echo 'open px4ctrl'
gnome-terminal --window  --title="px4ctrl" --command="bash -c 'cd ~/ego_planner_swarm_ws;source devel/setup.bash;roslaunch px4ctrl run_ctrl.launch ; $SHELL'"
sleep 2s
echo 'px4ctrl finish '

echo 'open takeoff workspace Manual'
gnome-terminal --window  --title="new ter1" --command="bash -c 'cd ~/ego_planner_swarm_ws;source devel/setup.bash;cd ./src/Fast-Drone-250/shfiles ; $SHELL'"
sleep 2s
echo 'px4ctrl finish '





