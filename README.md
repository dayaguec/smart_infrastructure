# Smart Infrastructure

Parent repository for a functional Carla-ROS Smart Infrastructure simulation. The repository integrates a CARLA simulation package featuring a traffic infrastructure simulation environment to which various types of sensors can be mounted: Cameras, LiDAR, GPS, RSUs, etc. 

The objective of the repository is to provide a controlled traffic infrastructure simulation environment for the development of V2I (Vehicle-to-Infrastructure) algorithms.

## Requirements

* **OS:** Ubuntu 22.04 LTS
* **ROS:** ROS2 Humble
* **Dependencies:** Ensure all individual package dependencies are met (*Check each submodule*).

## Submodules

* **`carla_infrastructure`**: Implements a custom bridge between Carla and ROS2 with standard ROS2 configurations.
* **`ros_interfaces`**: Folder to store Traffic Scene implementation with custom Road, Perception, Awareness, Behavior, and Cooperation messages.

## Installation

```bash
cd ros2_ws
git clone [https://github.com/dayaguec/smart_infrastructure.git](https://github.com/dayaguec/smart_infrastructure.git)

# Enter the repository before updating submodules
cd smart_infrastructure
git submodule update --init --recursive
./update_respos.sh

# Return to workspace root to build
cd ../.. 
colcon build
