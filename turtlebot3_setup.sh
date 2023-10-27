## setting dependencies for TurtleBot3

# Install Gazebo11
sudo apt-get install ros-noetic-gazebo-* -y
sudo apt install ros-noetic-cartographer -y
sudo apt install ros-noetic-cartographer-ros -y

# Install Cartographer
sudo apt install ros-noetic-navigation2 -y
sudo apt install ros-noetic-cartographer-ros -y

# Install Navigation2
sudo apt install ros-noetic-navigation2 -y
sudo apt install ros-noetic-nav2-bringup -y

# Install TurtleBot3 Packages
source ~/.bashrc
sudo apt install ros-noetic-dynamixel-sdk -y
sudo apt install ros-noetic-turtlebot3-msgs -y
sudo apt install ros-noetic-turtlebot3 -y

# Environment Configuration
echo 'export ROS_DOMAIN_ID=30 #TURTLEBOT3' >> ~/.bashrc
source ~/.bashrc
