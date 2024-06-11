cmake_minimum_required(VERSION 3.8)
project(cadeira)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(trajectory_msgs REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)

add_executable(controlador_lidar src/controlador_lidar.cpp)
ament_target_dependencies(controlador_lidar rclcpp trajectory_msgs)

install(TARGETS
  controlador_lidar
  DESTINATION lib/${PROJECT_NAME})

install( DIRECTORY launch/
         DESTINATION share/${PROJECT_NAME}/launch)
install( DIRECTORY config/
         DESTINATION share/${PROJECT_NAME}/config)
install( DIRECTORY description/
         DESTINATION share/${PROJECT_NAME}/description)


ament_package()
