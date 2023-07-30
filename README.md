# servo_gimbal
a gimbal with x_axis and y_axis drived by servo
# https://github.com/HazinTihoa/servo_gimbal.git

##test
#note:need 3 terminals
#terminal_1
roscore
#terminal_2 
cd arduino_ws
source ./devel/setup.sh
sudo chmod 777 /dev/ttyUSB0
rosrun ino_serial servo_sub
#terminal_3
cd arduino_ws
source ./devel/setup.sh
rosrun ino_serial servo
#Enter the angle you desire 
##test## 
