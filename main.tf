resource "aws_route53_zone" "route53_zone" {
  name = var.zone_name
}

resource "aws_route53_record" "elb_record" {
  zone_id = aws_route53_zone.route53_zone.zone_id
  name = var.record_name
  type = "A"
  
  alias {
    name = data.aws_lb.elb_data.dns_name
    zone_id = data.aws_lb.elb_data.zone_id
    evaluate_target_health = true
  }
}
