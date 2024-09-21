Vpc_info = {
  cidr_block = "192.168.0.0/16"
  name       = "Rohith"
}
subnet_info = [{
  cidr_block        = "192.168.1.0/24"
  availability_zone = "ap-south-1a"
  name="web-1"
  
  }, {
  cidr_block        = "192.168.2.0/24"
  availability_zone = "ap-south-1b"
    name = "web-2"
  }
  ,{
  cidr_block        = "192.168.3.0/24"
  availability_zone = "ap-south-1a"
    name = "web-3"
  },{
  cidr_block        = "192.168.4.0/24"
  availability_zone = "ap-south-1b"
    name = "web-4"
  }

]

