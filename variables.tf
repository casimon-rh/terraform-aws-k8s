variable "aws_ami_id" {
  type = string
  default = "ami-013f17f36f8b1fefb"
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

variable "k8s_cluster" {
  type = list(object({
    role=string, replicas=number, type=string, volsize=number
  }))
  default = [
    {
      role = "worker",
      replicas = 2,
      type = "m5a.large",
      volsize = 80
    },
    {
      role = "control-plane",
      replicas = 3,
      type = "m5a.large",
      volsize = 80
    },
    {
      role = "haproxy",
      replicas = 1,
      type = "t2.micro",
      volsize = 20
    }
  ]
}