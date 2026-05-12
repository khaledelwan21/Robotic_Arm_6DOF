cmake_minimum_required(VERSION 3.8)
project(robot_arm_urdf)

find_package(ament_cmake REQUIRED)

install(DIRECTORY meshes urdf config launch
  DESTINATION share/${PROJECT_NAME}
)

ament_package()
