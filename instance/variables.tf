
variable "instance_ami" {
  type = string
}
variable "instance_replicas" {
  type = number
}
variable "instance_type" {
  type = string
}
variable "instance_subnet_id" {
  type = string
}
variable "instance_security_group_ids" {
  type = list(string)
}
variable "instance_tag_name" {
  type = string
}
variable "instance_key_pair" {
  type = string
}
variable "instance_role" {
  type = string
}
variable "instance_vol_size" {
  type = number
}