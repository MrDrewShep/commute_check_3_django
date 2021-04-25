resource "aws_instance" "commute_check" {
  ami           = var.ami
  instance_type = "t2.micro"

  key_name = "flask_ec2" #TODO replace
  security_groups = [module.ssh_security_group.this_security_group_name]

  tags = {
    Name = "commute-check-v3-app"
  }

  # key_name = "testing2"
}