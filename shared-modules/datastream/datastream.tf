resource "akamai_datastream" "datastream" {
  active = true
  delivery_configuration {
    format = "JSON"
    frequency {
      interval_in_secs = 60
    }
  }
  contract_id = var.contract_id
  dataset_fields = [
    1000, #CP code
    1002, #Request ID
    1100, #Request time
    1005, #Bytes
    1006, #Client IP
    1008, #HTTP status code
    1009, #Protocol type
    1011, #Request host
    1012, #Request method
    1013, #Request path
    1014, #Request port
    1015, #Response Content-Length
    1016, #Response Content-Type
    1017, #User-Agent
    2001, #SSL overhead time
    2002, #SSL version
    2003, #Object size
    2004, #Uncompressed size
    2006, #Overhead bytes
    2008, #Total bytes
    2009, #Query string
    1019, #Accept-Language
    1023, #Cookie
    1031, #Range
    1032, #Referer
    1037, #X-Forwarded-For
    2005, #Max age
    1033, #Request end time
    1068, #Error code
    1102, #Turn around time
    1103, #Transfer time
    2007, #DNS lookup time
    1082, #Custom field
    2010, #Cache status
    2012, #Country/Region
    2013, #State
    2014, #City
    2050, #Security rules
    3000, #EdgeWorkers usage
    3001, #EdgeWorkers execution
  ]
  group_id = var.group_id
  properties = [
    var.property_ids
  ]
  stream_name = var.stream_name
  s3_connector {
    bucket            = "Test_Bucket"
    display_name      = "s3"
    path              = "akamai/logs"
    access_key        = "asdfijhlasdkfjhlskjdhflkjahsd"
    secret_access_key = "zdflvkjbnzldsfvjbnzlsdkvjbnzlsdfknzlsdkjvn"
    region            = "us-east-1"
  }
  notification_emails = [
    var.email
  ]
  collect_midgress = false
}
