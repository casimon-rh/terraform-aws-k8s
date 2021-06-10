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

module "nodes" {
  source = "./instance"
  # for tipos
  count = length(var.k8s_cluster) 
  instance_ami = var.aws_ami_id
  instance_replicas = var.k8s_cluster[count.index].replicas
  instance_type = var.k8s_cluster[count.index].type
  instance_subnet_id = var.aws_subnet_id
  instance_security_group_ids = var.aws_security_group_ids
  instance_tag_name = var.aws_tag_name
  instance_key_pair = var.aws_key_pair
  instance_role = var.k8s_cluster[count.index].role
  instance_vol_size = var.k8s_cluster[count.index].volsize
}