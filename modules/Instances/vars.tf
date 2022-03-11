variable "environment" {
  description = "Deployment Environment"
}

variable "ami" {
    description = "AMI to be used"
}

variable "instance_type" {
    description = "EC2 instance type"
}

variable "key_name" {
    description = "SSH key name"
}

variable "private_subnet_id" {
    description = "EC2 private subnet"
}

variable "public_subnet_id" {
    description = "EC2 public subnet"
}

variable "vpc_security_group_ids" {
    type = list
    description = "SG to be used"
}
