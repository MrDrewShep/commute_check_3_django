resource "aws_eip_association" "eip_association" {
  instance_id = aws_instance.commute_check.id
  public_ip   = var.eip
}