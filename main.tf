resource "aws_vpc" "Rohith" {
  cidr_block = var.Vpc_info.cidr_block

  tags = {
    Name = var.Vpc_info.name
  }


}

resource "aws_subnet" "subnet" {
  count             = length(var.subnet_info)
  vpc_id            = aws_vpc.Rohith.id
  availability_zone = var.subnet_info[count.index].availability_zone
  cidr_block        = var.subnet_info[count.index].cidr_block
  tags = {
    Name = var.subnet_info[count.index].name
  }

}

# resource "aws_subnet" "subnet-2" {
#     vpc_id = aws_vpc.Rohith.id
#     availability_zone = var.availability_zone[1]
#     cidr_block = var.cidr_block_subnet[1]
#     tags = {
#       Name = " web-2"
#     }

# }

# resource "aws_subnet" "subnet-3" {
#     vpc_id = aws_vpc.Rohith.id
#     availability_zone = var.availability_zone[0]
#     cidr_block = var.cidr_block_subnet[2]
#     tags = {
#       Name = " web-3"
#     }

# }

# resource "aws_subnet" "subnet-4" {
#     vpc_id = aws_vpc.Rohith.id
#     availability_zone = var.availability_zone[1]
#     cidr_block = var.cidr_block_subnet[3]
#     tags = {
#       Name = " web-4"
#     }

# }