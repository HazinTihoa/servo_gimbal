#include "ros/ros.h"
#include "ino_serial/msg.h"
#include "serial/serial.h"
#include "std_msgs/String.h"
serial::Serial serial_port;

void servoCallback(const ino_serial::msg::ConstPtr& msg)
{
  // ROS_INFO("I heardX: [%d]",msg->x_axis);
  // ROS_INFO("I heardY: [%d]",msg->y_axis);

   
    if (serial_port.available())
    {
        std::string data = serial_port.read(serial_port.available());
        ROS_INFO("Received data: %s", data.c_str());
    }
    std::string X_angle = "#A"+std::to_string(msg->x_axis)+"!";
    std::string Y_angle = "#B"+std::to_string(msg->y_axis)+"!";
    serial_port.write(X_angle);
    serial_port.write(Y_angle);
    // ROS_INFO("x_axis: %d, y_axis: %d", msg->x_axis, msg->y_axis);


    // ROS_INFO("serial data: %s", X_angle.c_str());

    // serial_port.write(X_angle);
    ros::Duration(0.1).sleep();
    ros::spinOnce();

   
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");

  ros::NodeHandle n;


  serial_port.setPort("/dev/ttyUSB0");  // 串口设备名称
  serial_port.setBaudrate(115200);        // 波特率
  serial::Timeout timeout = serial::Timeout::simpleTimeout(1000); // 超时设置
  serial_port.setTimeout(timeout);
  serial_port.open();

  ros::Subscriber sub = n.subscribe("servo", 1000, servoCallback);

  ros::spin();

  return 0;
}

