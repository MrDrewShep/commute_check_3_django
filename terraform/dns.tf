resource "aws_route53_record" "test" {
  zone_id = data.aws_route53_zone.current.zone_id
  name    = "test"
  type    = "A"
  ttl     = "300"
  records = [aws_eip_association.eip_association.public_ip]
}
