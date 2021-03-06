// Generated by gencpp from file cs_msgs/ImagesResponse.msg
// DO NOT EDIT!


#ifndef CS_MSGS_MESSAGE_IMAGESRESPONSE_H
#define CS_MSGS_MESSAGE_IMAGESRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Image.h>

namespace cs_msgs
{
template <class ContainerAllocator>
struct ImagesResponse_
{
  typedef ImagesResponse_<ContainerAllocator> Type;

  ImagesResponse_()
    : im()  {
    }
  ImagesResponse_(const ContainerAllocator& _alloc)
    : im(_alloc)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _im_type;
  _im_type im;





  typedef boost::shared_ptr< ::cs_msgs::ImagesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cs_msgs::ImagesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ImagesResponse_

typedef ::cs_msgs::ImagesResponse_<std::allocator<void> > ImagesResponse;

typedef boost::shared_ptr< ::cs_msgs::ImagesResponse > ImagesResponsePtr;
typedef boost::shared_ptr< ::cs_msgs::ImagesResponse const> ImagesResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cs_msgs::ImagesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cs_msgs::ImagesResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cs_msgs::ImagesResponse_<ContainerAllocator1> & lhs, const ::cs_msgs::ImagesResponse_<ContainerAllocator2> & rhs)
{
  return lhs.im == rhs.im;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cs_msgs::ImagesResponse_<ContainerAllocator1> & lhs, const ::cs_msgs::ImagesResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cs_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::cs_msgs::ImagesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cs_msgs::ImagesResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cs_msgs::ImagesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cs_msgs::ImagesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cs_msgs::ImagesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cs_msgs::ImagesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cs_msgs::ImagesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "61964d599e9e763fc0e734ed56ae928d";
  }

  static const char* value(const ::cs_msgs::ImagesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x61964d599e9e763fULL;
  static const uint64_t static_value2 = 0xc0e734ed56ae928dULL;
};

template<class ContainerAllocator>
struct DataType< ::cs_msgs::ImagesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cs_msgs/ImagesResponse";
  }

  static const char* value(const ::cs_msgs::ImagesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cs_msgs::ImagesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/Image im #Sends the images\n"
"\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/Image\n"
"# This message contains an uncompressed image\n"
"# (0, 0) is at top-left corner of image\n"
"#\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"                     # If the frame_id here and the frame_id of the CameraInfo\n"
"                     # message associated with the image conflict\n"
"                     # the behavior is undefined\n"
"\n"
"uint32 height         # image height, that is, number of rows\n"
"uint32 width          # image width, that is, number of columns\n"
"\n"
"# The legal values for encoding are in file src/image_encodings.cpp\n"
"# If you want to standardize a new string format, join\n"
"# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n"
"\n"
"string encoding       # Encoding of pixels -- channel meaning, ordering, size\n"
"                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n"
"\n"
"uint8 is_bigendian    # is this data bigendian?\n"
"uint32 step           # Full row length in bytes\n"
"uint8[] data          # actual matrix data, size is (step * rows)\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::cs_msgs::ImagesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cs_msgs::ImagesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.im);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ImagesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cs_msgs::ImagesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cs_msgs::ImagesResponse_<ContainerAllocator>& v)
  {
    s << indent << "im: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.im);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CS_MSGS_MESSAGE_IMAGESRESPONSE_H
