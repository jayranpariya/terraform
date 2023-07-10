provider "aws" {
    region = "ap-south-1"
}

variable "subnet_cidr_block" {
    description = "subnet cidr block"  
}

resource "aws_vpc" "develpoment-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = { 
        "Name": "develpoment-vpc",
    }
}

resource "aws_subnet" "dev-subnet-1"  {
    vpc_id = aws_vpc.develpoment-vpc.id
    cidr_block = var.subnet_cidr_block
    availability_zone = "ap-south-1a"
     tags = { 
        "Name": "develpoment-vpc-subnet-1",
    }
} 

# output "dev-vpc-id" {
#     value = aws_vpc.develpoment-vpc.id
# }

# output "dev-subnet-id" {
#     value = aws_subnet.dev-subnet-1.id    
# }


