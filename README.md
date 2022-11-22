# april_msgs
Repository containing msg, srv and action files of APRIL system.

## Contact info @ IIT: 

[Giulia Belgiovine](mailto:Giulia.Belgiovine@iit.it)

[Jonathan Bar-Magen Numhauser](mailto:jonathan.barmagen@iit.it)

[Francesco Rea](mailto:Francesco.Rea@iit.it)

## Instructions

This branch of April Messages allow us to have noth ROS1 and ROS2 in the same Workspace. 

## ROS1 Build

To compile for ROS1 run on base folder of April_Msgs:

```sh
. /opt/ros/noetic/setup.sh && catkin_make
```

## ROS2 Build

To compile for ROS2 run on base folder of April_Msgs:

```sh
. /opt/ros/galactic/setup.sh && colcon build
```

## Adding Messages

Adding a new message in ROS1 and ROS2 should follow the next steps:

### ROS1:

Inside the "msg_ros1" folder, add the .msg file with the new message file in ROS1. 

IMPORTANT!! the std_msgs/Header Header should have a "H" capital letter (in the "Header" name variable) in the beginning of the message file.

Then update the CMakeListsROS1.txt, in cmake folder "/cmake/CMakeListROS1.txt".

### ROS2:

Inside the "msg_ros2" folder, find the folder related to the module to which the message belongs to.

Then add the new message file to the folder. 

IMPORTANT!! the std_msgs/Header header should have a "h" lower letter (in the "header" name variable) in the beginning of the message file.

### MAP_RULES:

It's important to update the map_rules.yaml to associate both the ROS1 and ROS2 messages, so the ROS1_BRIDGE can map them and relate them. Any NEW message will require such mapping.
