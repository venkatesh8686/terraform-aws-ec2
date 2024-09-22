resource "aws_instance" "terraform" {

    ami = var.ami_id
    instance_type = var.instance
    vpc_security_group_ids = var.security_group_id
}