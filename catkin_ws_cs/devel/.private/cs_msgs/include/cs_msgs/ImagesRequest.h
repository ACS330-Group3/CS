// Generated by gencpp from file cs_msgs/ImagesRequest.msg
// DO NOT EDIT!


#ifndef CS_MSGS_MESSAGE_IMAGESREQUEST_H
#define CS_MSGS_MESSAGE_IMAGESREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cs_msgs
{
template <class ContainerAllocator>
struct ImagesRequest_
{
  typedef ImagesRequest_<ContainerAllocator> Type;

  ImagesRequest_()
    : ID(0)  {
    }
  ImagesRequest_(const ContainerAllocator& _alloc)
    : ID(0)  {
  (void)_alloc;
    }



   typedef int8_t _ID_type;
  _ID_type ID;





  typedef boost::shared_ptr< ::cs_msgs::ImagesRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cs_msgs::ImagesRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ImagesRequest_

typedef ::cs_msgs::ImagesRequest_<std::allocator<void> > ImagesRequest;

typedef boost::shared_ptr< ::cs_msgs::ImagesRequest > ImagesRequestPtr;
typedef boost::shared_ptr< ::cs_msgs::ImagesRequest const> ImagesRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cs_msgs::ImagesRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cs_msgs::ImagesRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cs_msgs::ImagesRequest_<ContainerAllocator1> & lhs, const ::cs_msgs::ImagesRequest_<ContainerAllocator2> & rhs)
{
  return lhs.ID == rhs.ID;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cs_msgs::ImagesRequest_<ContainerAllocator1> & lhs, const ::cs_msgs::ImagesRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::cs_msgs::ImagesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cs_msgs::ImagesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cs_msgs::ImagesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cs_msgs::ImagesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cs_msgs::ImagesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cs_msgs::ImagesRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cs_msgs::ImagesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0cb5143ed23a5de01874507c8711c4d5";
  }

  static const char* value(const ::cs_msgs::ImagesRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0cb5143ed23a5de0ULL;
  static const uint64_t static_value2 = 0x1874507c8711c4d5ULL;
};

template<class ContainerAllocator>
struct DataType< ::cs_msgs::ImagesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cs_msgs/ImagesRequest";
  }

  static const char* value(const ::cs_msgs::ImagesRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cs_msgs::ImagesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 ID #Sends the product ID\n"
;
  }

  static const char* value(const ::cs_msgs::ImagesRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cs_msgs::ImagesRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ID);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ImagesRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cs_msgs::ImagesRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cs_msgs::ImagesRequest_<ContainerAllocator>& v)
  {
    s << indent << "ID: ";
    Printer<int8_t>::stream(s, indent + "  ", v.ID);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CS_MSGS_MESSAGE_IMAGESREQUEST_H
