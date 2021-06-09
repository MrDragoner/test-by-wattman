#!/bin/bash
gnome-terminal -- bash -c 'source /opt/ros/noetic/setup.bash && roscore'&
gnome-terminal -- bash -c "source /opt/ros/noetic/setup.bash;
rosbag play /home/catkin_ws/src/test_name"&
gnome-terminal -- bash -c "source /opt/ros/noetic/setup.bash;
rosbag play /home/catkin_ws/src/test_index"&
#source /opt/ros/noetic/setup.bash
#rosbag play /home/catkin_ws/src/test_name
#rosbag play /home/catkin_ws/src/test_index
#echo "str"
DATE=`date '+%Y-%m-%d-%H-%M-%S'`
name=test_name
index=test_index
echo "记录的包名：$test_name "
echo "记录的包名：$test_index "

rosbag record /home/catkin_ws/src/test_name 
rosbag record /home/catkin_ws/src/test_index 
sleep 10
