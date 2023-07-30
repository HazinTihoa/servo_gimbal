#include "ros/ros.h"
#include "ino_serial/msg.h"
#include "serial/serial.h"
#include <sstream>
int x_a=0;
int y_a=0;
int main(int argc, char **argv)
{
  ros::init(argc, argv, "servo");

  ros::NodeHandle n;

  ros::Publisher servo_pub = n.advertise<ino_serial::msg>("servo", 1000);

  ros::Rate loop_rate(10);
  int i=4;

  while (ros::ok())
  {
    ino_serial::msg msg;


    i+=0.1;
    // msg.x_axis=i;
    //msg.y_axis=10;
    // std::cout << "Enter x_axis: ";
    // std::cin >> x_a;
    // std::cout << "Publishing x_axis: " << msg.x_axis << std::endl;
    
    // std::cout << "Enter y_axis: ";
    // std::cin >> y_a;
    // std::cout << "Publishing y_axis: " << msg.y_axis << std::endl;

    x_a+=3;
    y_a+=3;
    msg.x_axis=x_a;
    msg.y_axis=y_a;
    servo_pub.publish(msg);

    ros::spinOnce();

    loop_rate.sleep();
  }

  return 0;
}
