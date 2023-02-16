resource "aws_route53_zone" "primary" {
  name = module.us-east-2.registered-domain-name
}

resource "aws_route53_record" "service2" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = module.us-east-2.registered-domain-name
  type    = "A"

  alias {
    name                   = "${module.eu-west-1.apprunner-service-endpoint}"
    zone_id                = aws_route53_zone.primary.zone_id
    evaluate_target_health = true

  }
  latency_routing_policy {
    region = "eu-west-1"
  }
  set_identifier = "eu-west-1"
}

resource "aws_route53_record" "service1" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = module.us-east-2.registered-domain-name
  type    = "A"

  alias {
    name                   = "${module.us-east-2.apprunner-service-endpoint}"
    zone_id                = aws_route53_zone.primary.zone_id
    evaluate_target_health = true

  }
  latency_routing_policy {
    region = "us-east-2"
  }
  set_identifier = "us-east-2"
}


