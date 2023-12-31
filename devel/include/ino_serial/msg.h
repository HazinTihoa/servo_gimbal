// Generated by gencpp from file ino_serial/msg.msg
// DO NOT EDIT!


#ifndef INO_SERIAL_MESSAGE_MSG_H
#define INO_SERIAL_MESSAGE_MSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ino_serial
{
template <class ContainerAllocator>
struct msg_
{
  typedef msg_<ContainerAllocator> Type;

  msg_()
    : x_axis(0)
    , y_axis(0)  {
    }
  msg_(const ContainerAllocator& _alloc)
    : x_axis(0)
    , y_axis(0)  {
  (void)_alloc;
    }



   typedef int32_t _x_axis_type;
  _x_axis_type x_axis;

   typedef int32_t _y_axis_type;
  _y_axis_type y_axis;





  typedef boost::shared_ptr< ::ino_serial::msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ino_serial::msg_<ContainerAllocator> const> ConstPtr;

}; // struct msg_

typedef ::ino_serial::msg_<std::allocator<void> > msg;

typedef boost::shared_ptr< ::ino_serial::msg > msgPtr;
typedef boost::shared_ptr< ::ino_serial::msg const> msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ino_serial::msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ino_serial::msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ino_serial::msg_<ContainerAllocator1> & lhs, const ::ino_serial::msg_<ContainerAllocator2> & rhs)
{
  return lhs.x_axis == rhs.x_axis &&
    lhs.y_axis == rhs.y_axis;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ino_serial::msg_<ContainerAllocator1> & lhs, const ::ino_serial::msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ino_serial

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ino_serial::msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ino_serial::msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ino_serial::msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ino_serial::msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ino_serial::msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ino_serial::msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ino_serial::msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7cd52d162ee179ffe08c8236a2ba4f89";
  }

  static const char* value(const ::ino_serial::msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7cd52d162ee179ffULL;
  static const uint64_t static_value2 = 0xe08c8236a2ba4f89ULL;
};

template<class ContainerAllocator>
struct DataType< ::ino_serial::msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ino_serial/msg";
  }

  static const char* value(const ::ino_serial::msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ino_serial::msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 x_axis\n"
"int32 y_axis\n"
;
  }

  static const char* value(const ::ino_serial::msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ino_serial::msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x_axis);
      stream.next(m.y_axis);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ino_serial::msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ino_serial::msg_<ContainerAllocator>& v)
  {
    s << indent << "x_axis: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x_axis);
    s << indent << "y_axis: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y_axis);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INO_SERIAL_MESSAGE_MSG_H
