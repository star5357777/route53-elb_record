output "route53_ns" {
        value = [for i in aws_route53_zone.route53_zone : i.name_servers]
}
