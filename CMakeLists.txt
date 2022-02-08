cmake_minimum_required(VERSION 3.0.2)
project(april_msgs)

# Compiling as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)

# Finding catkin macros and libraries
find_package(catkin REQUIRED COMPONENTS std_msgs sensor_msgs message_generation)


################################################
## Declare ROS messages, services and actions ##
################################################

# Generating messages in the 'msg' folder
add_message_files(
  FILES
  ComponentStatus.msg
  QualityCheckResult.msg
  ShelfLife.msg
)

## Generate services in the 'srv' folder
add_service_files(
  FILES
  PemuStatistics.srv
  Weigh.srv
  TcpConnect.srv
)

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

# Generating added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs
  sensor_msgs
)


###################################
## catkin specific configuration ##
###################################

# Generating cmake config files for the package. Declaring also things to be
# passed to dependent projects.
catkin_package(
  CATKIN_DEPENDS std_msgs sensor_msgs message_runtime
)

###########
## Build ##
###########

# Specifying additional locations of header files
include_directories(
  ${catkin_INCLUDE_DIRS}
)

