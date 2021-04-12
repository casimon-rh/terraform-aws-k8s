terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}
provider "aws" {
  region = var.aws_region_name
  profile = "default"
}
resource "aws_instance" "k8s_ctrl_plane" {
  count = 3
  ami = var.aws_ami_id
  instance_type = var.aws_instance_type
  subnet_id = var.aws_subnet_id
  vpc_security_group_ids = var.aws_security_group_ids
  key_name = var.aws_key_pair
  tags = {
    name = var.aws_tag_name
    Name = "ctrl-plane-${count.index}"
  }
}
resource "aws_instance" "k8s_workers" {
  count = 2
  ami = var.aws_ami_id
  instance_type = var.aws_instance_type
  subnet_id = var.aws_subnet_id
  vpc_security_group_ids = var.aws_security_group_ids
  key_name = var.aws_key_pair
  tags = {
    name = var.aws_tag_name
    Name = "worker-${count.index}"
  }
}
resource "aws_instance" "k8s_lb" {
  ami = var.aws_ami_id
  instance_type = var.aws_instance_type_lb
  subnet_id = var.aws_subnet_id
  vpc_security_group_ids = var.aws_security_group_ids
  key_name = var.aws_key_pair
  tags = {
    name = var.aws_tag_name
    Name = "haproxy"
  }
}