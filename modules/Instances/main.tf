resource "aws_instance" "ec2_webserver" {
    ami                         = var.ami
    associate_public_ip_address = true
    instance_type               = var.instance_type
    key_name                    = var.key_name
    subnet_id                   = var.public_subnet_id
    vpc_security_group_ids      = var.vpc_security_group_ids
    
    tags = {
        Name = "${var.environment}-webserver"
    }
}

resource "aws_instance" "ec2_database" {
    ami                         = var.ami
    associate_public_ip_address = true
    instance_type               = var.instance_type
    key_name                    = var.key_name
    subnet_id                   = var.private_subnet_id
    vpc_security_group_ids      = var.vpc_security_group_ids
    
    tags = {
        Name = "${var.environment}-database"
    }
}