resource "aws_route53_zone" "route53_zone" {
        for_each = var.names
        name = each.value.name
}

resource "aws_route53_record" "route53_record" {
        for_each = var.names
        zone_id = aws_route53_zone.route53_zone[each.key].zone_id
        name = each.value.record_name
        type = "A"

        alias {
                name = data.aws_lb.elb_data.dns_name
                zone_id = data.aws_lb.elb_data.zone_id
                evaluate_target_health = true
        }
}
