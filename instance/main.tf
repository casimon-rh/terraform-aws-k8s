
resource "aws_instance" "k8s_ctrl_plane" {
  count = var.instance_replicas
  ami = var.instance_ami
  instance_type = var.instance_type
  subnet_id = var.instance_subnet_id
  vpc_security_group_ids = var.instance_security_group_ids
  key_name = var.instance_key_pair
  tags = {
    name = var.instance_tag_name
    Name = "${var.instance_role}-${count.index}"
  }
}