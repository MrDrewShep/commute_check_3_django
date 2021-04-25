resource "aws_instance" "commute_check" {
  ami           = var.ami
  instance_type = "t2.micro"
  tags = {
    Name = "commute-check-v3-app"
  }

  # key_name = "testing2"
}