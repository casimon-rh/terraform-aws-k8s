# terraform-aws-k8s

## Intro

Terraform scripts to build a k8s cluster

### Cluster info

* 3 x Control Planes
* 2 x Workers
* 1 x Load Balancer Node

## Vars

| Name | Default | Must change |
| --- | --- | --- | 
| aws_ami_id | "ami-013f17f36f8b1fefb" (Ubuntu 18) | ❓ |
| aws_instance_type_lb | t2.micro | ❓ |
| aws_instance_type | m5a.large | ❓ |
| aws_key_pair | key | ✔️ |
| aws_subnet_id | subnet-id | ✔️ |
| aws_security_group_ids| ["sg-id"] | ✔️ |
| aws_tag_name | kubernetes | ❓ |
| aws_region_name | us-east-1 | ❓ |
