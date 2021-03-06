// Generated by gencpp from file cs_msgs/Quality.msg
// DO NOT EDIT!


#ifndef CS_MSGS_MESSAGE_QUALITY_H
#define CS_MSGS_MESSAGE_QUALITY_H

#include <ros/service_traits.h>


#include <cs_msgs/QualityRequest.h>
#include <cs_msgs/QualityResponse.h>


namespace cs_msgs
{

struct Quality
{

typedef QualityRequest Request;
typedef QualityResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Quality
} // namespace cs_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cs_msgs::Quality > {
  static const char* value()
  {
    return "f721ff84e587aebb5cf5b1c8881d373f";
  }

  static const char* value(const ::cs_msgs::Quality&) { return value(); }
};

template<>
struct DataType< ::cs_msgs::Quality > {
  static const char* value()
  {
    return "cs_msgs/Quality";
  }

  static const char* value(const ::cs_msgs::Quality&) { return value(); }
};


// service_traits::MD5Sum< ::cs_msgs::QualityRequest> should match
// service_traits::MD5Sum< ::cs_msgs::Quality >
template<>
struct MD5Sum< ::cs_msgs::QualityRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cs_msgs::Quality >::value();
  }
  static const char* value(const ::cs_msgs::QualityRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cs_msgs::QualityRequest> should match
// service_traits::DataType< ::cs_msgs::Quality >
template<>
struct DataType< ::cs_msgs::QualityRequest>
{
  static const char* value()
  {
    return DataType< ::cs_msgs::Quality >::value();
  }
  static const char* value(const ::cs_msgs::QualityRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cs_msgs::QualityResponse> should match
// service_traits::MD5Sum< ::cs_msgs::Quality >
template<>
struct MD5Sum< ::cs_msgs::QualityResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cs_msgs::Quality >::value();
  }
  static const char* value(const ::cs_msgs::QualityResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cs_msgs::QualityResponse> should match
// service_traits::DataType< ::cs_msgs::Quality >
template<>
struct DataType< ::cs_msgs::QualityResponse>
{
  static const char* value()
  {
    return DataType< ::cs_msgs::Quality >::value();
  }
  static const char* value(const ::cs_msgs::QualityResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CS_MSGS_MESSAGE_QUALITY_H
