resource "aws_default_vpc" "default" {}

resource "aws_eip_association" "eip_association" {
  instance_id = aws_instance.commute_check.id
  public_ip   = var.eip
}

# resource "security_group" "nginx_container_access" {
#   name = "nginx_container_access"
#   vpc_id = data.aws_default_vpc.default.id
# }

# TODO how do you have multiple modules, if you can't "name" them?
module "ssh_security_group" {
  source  = "terraform-aws-modules/security-group/aws//modules/ssh"
  version = "3.18.0"

  name        = "nginx_ssh_access"
  description = "SSH access into the nginx container"
  vpc_id      = aws_default_vpc.default.id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  auto_ingress_rules  = ["ssh-tcp"]
}