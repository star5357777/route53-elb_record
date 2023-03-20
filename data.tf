data "aws_lb" "elb_data" {
  arn  = "arn:aws:elasticloadbalancing:ap-northeast-2:455718323285:loadbalancer/app/front-alb/fdb9b94a912ed4e6"
  name = "front-alb"
}
