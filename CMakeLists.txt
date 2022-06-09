cmake_minimum_required(VERSION 3.8)
project(april_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)


if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/sim_sem/SEMEmergency.msg"
  "msg/sim_sem/SEMEmergencyRequestStatus.msg"
  "msg/sim_sem/SIMSEMEnvironment.msg"
  "msg/sim_sem/SIMFatigueAnalysis.msg"
  "msg/sim_sem/SIMSEMHumanBehaviour.msg"
  "msg/sim_sem/SIMSEMHumanGraspingStrategies.msg"
  "msg/sim_sem/SIMHumanHandGesture.msg"
  "msg/sim_sem/SIMSEMHumanMotion.msg"
  "msg/sim_sem/SIMHumanParameterIntention.msg" #FLOAT TYPE FAILS BUILD, CHECK FLOAT TYPE
  "msg/sim_sem/SIMHumanSight.msg"
  "msg/sim_sem/SEMNeuromorphicSensing.msg"
  "msg/sim_sem/SIMSEMPhysicalObject.msg"
  "msg/sim_sem/SIMRobotArm.msg"
  "msg/sim_sem/SIMRobotArmKinematic.msg"
  "msg/sim_sem/SIMRobotGraspingStrategies.msg"
  "msg/sim_sem/SIMRobotHand.msg"
  "msg/sim_sem/SIMRobotHandKinematic.msg"
  "msg/sim_sem/SIMSEMRobotHighLatencyCorrections.msg"
  "msg/sim_sem/SEMRobotLowLatencyCorrections.msg"
  "msg/sim_sem/SIMTactile.msg"
  "msg/ComponentStatus.msg"
  "msg/PassportValidation.msg"
  "msg/QualityCheckResult.msg"
  "msg/ShelfLife.msg"
  "srv/PemuStatistics.srv"
  "srv/TcpConnect.srv"
  "srv/Weigh.srv"
  DEPENDENCIES std_msgs sensor_msgs
)

ament_package()
