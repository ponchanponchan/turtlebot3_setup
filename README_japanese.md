# TurtleBot3_setup on foxy (ROS2)

## TurtleBot3をインストールするための環境を構築
以下のコマンドを実行するだけ
```bash:
cd turtlebot3_setup
chmod +x turtlebot3_setup.sh
./turtlebot3_setup.sh
```

## TurtleBot3のビルド
- "turtlebot3"のリポジトリをROS2ワークスペースのsrcフォルダにgit clone
```
cd ~/ros2_ws/src/
git clone -b foxy-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
```
- ビルド
```
cd ~/ros2_ws && colcon build --symlink-install
```

## TurtleBot3の選択
3種; burger, waffle, waffle_pi.

以下のようにして，シミュレーションで用いるタイプを決められる．
```
export TURTLEBOT3_MODEL=waffle_pi
```

以下のように，bashrcファイルに書いておくと便利かもしれない．
```
# select a model of turtlebot3 for simulation
#export TURTLEBOT3_MODEL=burger
#export TURTLEBOT3_MODEL=waffle
export TURTLEBOT3_MODEL=waffle_pi
```

## テスト
- launch environment
```
ros2 launch turtlebot3_gazebo turtlebot3_house.launch.py
```
- launch teleop node
```
ros2 run turtlebot3_teleop teleop_keyboard
```

これで，環境が立ち上がり，ロボットをキー入力で操作できれば完了である．

### テストの様子

<iframe width="560" height="315" src="https://www.youtube.com/embed/Tq450KJKtyQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## 参考文献
- https://emanual.robotis.com/docs/en/platform/turtlebot3/quick-start/

- https://emanual.robotis.com/docs/en/platform/turtlebot3/simulation/