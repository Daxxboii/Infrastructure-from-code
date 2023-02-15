resource "aws_route53_zone" "primary" {
    name = "${module.us-east-2.registered-domain-name}"
}

/*output "zone_id"{
    value = aws_route53_zone.primary.zone_id
}*/

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "${module.us-east-2.registered-domain-name}"
  type    = "A"
 
   alias {
   // name                   = "${module.us-east-2.try}"
   name = "${module.us-east-2.registered-domain-name}"
    zone_id                = aws_route53_zone.primary.zone_id
    evaluate_target_health = true
    
  }
   latency_routing_policy {
    region = "us-east-2"
  }
  set_identifier = "SET_ID"
}