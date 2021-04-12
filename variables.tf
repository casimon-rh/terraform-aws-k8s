variable "aws_ami_id" {
  type = string
  default = "ami-013f17f36f8b1fefb"
}
variable "aws_instance_type_lb" {
  type = string
  default = "t2.micro"
}
variable "aws_instance_type" {
  type = string
  default = "m5a.large"
}
variable "aws_key_pair" {
  type = string
  default = "key"
}
variable "aws_subnet_id" {
  type = string
  default = "subnet-id"
}
variable "aws_security_group_ids" {
  type = list(string)
  default = ["sg-id"]
}
variable "aws_tag_name" {
  type = string
  default = "kubernetes"
}
variable "aws_region_name" {
  type = string
  default = "us-east-1"
}
