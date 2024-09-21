# variable "cidr_block_subnet" {

#   type        = list(object({
#   cidr_block = string
#   }))
#   default={
#     cidr_block = "10.0.0.0/24"
#     tags= {
#       Name=we
#     }
#   }


#   default     = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
#   description = "This is cidr block of an subnets"

# }

# variable "availability_zone" {

#   type        = list(string)
#   default     = ["ap-south-1a", "ap-south-1b", "ap-south-1a", "ap-south-1b"]
#   description = "This is availability_zone of an subnets"

# }

# variable "aws_subnet" {

#   type    = list(string)
#   default = ["web-1", "web-2", "web-3", "web-4"]

# }

# variable "Vpc_cidr" {
#   type = string

# }

variable "Vpc_info" {
  type = object({
    name       = string
    cidr_block = string
    
  })

}
variable "subnet_info" {
  type = list(object({
    name = string
    #vpc_id= string
    cidr_block        = string
    availability_zone = string
  }))

}