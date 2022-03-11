variable "AWS_ACCESS_KEY" {
  default = "AKIAZXTIMFEWGKXEAYHZ"
}

variable "AWS_SECRET_KEY" {
  default = "7VJ0dXvT1gcT2JIGWrqcTIZI6ZyjMGy/ddWP9gT2"
}

variable "region" {
  default = "us-east-1"
}

variable "environment" {
  description = "Deployment Environment"
  default = "awslab"
}

variable "vpc_cidr" {
  description = "CIDR block of the vpc"
  default     = "172.16.0.0/16"
}

variable "public_subnets_cidr" {
  type        = list(any)
  description = "CIDR block for Public Subnet"
  default     = ["172.16.1.0/24"]
}

variable "private_subnets_cidr" {
  type        = list(any)
  description = "CIDR block for Private Subnet"
  default     = ["172.16.2.0/24"]
}

variable "ami" {
  description = "AMI id"
  default = "ami-023c8dbf8268fb3ca"
}

variable "instance_type" {
    description = "EC2 instance type"
    default = "t2.micro"
}

