resource "aws_route53_zone" "hosted_zone" {
  name = var.hosted_zone_name
  dynamic "vpc" {
    for_each = var.vpc_id
    content {
      vpc_id = vpc.value
    }
  }
}

resource "aws_route53_record" "a_record" {
  zone_id = aws_route53_zone.hosted_zone.zone_id
  name    = var.sub_domain
  type    = "A"
  ttl     = "300"
  records = var.ips
}