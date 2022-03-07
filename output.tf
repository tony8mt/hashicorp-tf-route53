output "hosted_zone_id" {
  description = "Zone Id of the Hosted Zone"
  value = aws_route53_zone.hosted_zone.zone_id
}

output "authoritative_nameserver" {
    description = "Authoritative Nameservers of the parent domain"
    value = aws_route53_zone.hosted_zone.name_servers
}
