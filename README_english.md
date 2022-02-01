# TurtleBot3_setup on foxy (ROS2)

## Setting Dependencies for TurtleBot3
Just Run Below
```bash:
cd turtlebot3_setup
chmod +x turtlebot3_setup.sh
./turtlebot3_setup.sh
```

## Setup TurtleBot3
- git clone "turtlebot3" repository to src in your ROS2 workspace
```
cd ~/ros2_ws/src/
git clone -b foxy-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
```
- build
```
cd ~/ros2_ws && colcon build --symlink-install
```

## set type of TurtleBot3
They have 3 types; burger, waffle, waffle_pi.

You can select one for simulation by run below.
```
export TURTLEBOT3_MODEL=waffle_pi
```

You can also add them to .bashrc like this.
```
# select a model of turtlebot3 for simulation
#export TURTLEBOT3_MODEL=burger
#export TURTLEBOT3_MODEL=waffle
export TURTLEBOT3_MODEL=waffle_pi
```

## test
- launch environment
```
ros2 launch turtlebot3_gazebo turtlebot3_house.launch.py
```
- launch teleop node
```
ros2 run turtlebot3_teleop teleop_keyboard
```

If you have no errors, Complete!

### test video

https://www.youtube.com/watch?v=Tq450KJKtyQ

## References
- https://emanual.robotis.com/docs/en/platform/turtlebot3/quick-start/

- https://emanual.robotis.com/docs/en/platform/turtlebot3/simulation/