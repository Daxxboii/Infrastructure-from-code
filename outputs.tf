output "api-gateway-link-1" {
  value = module.us-east-2.apprunner-service-endpoint
}

output "api-gateway-link-2" {
  value = module.eu-west-1.apprunner-service-endpoint
}
