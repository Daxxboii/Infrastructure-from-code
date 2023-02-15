
variable "github_branch" {
  default = "main"
}

variable "github_repository_link"{
  default = "https://github.com/Daxxboii/Basic-express-app"
}

variable "apprunner-service-name" {
  default = "apprunner-service-1"
}

variable "api-gateway-name"{
  default = "apprunner-service-api-gateway"
}

variable "registered-domain-name"{
  default = "testing.com"
}

output "registered-domain-name"{
  value = var.registered-domain-name
}

//According to documentation , github app handshake has to be done within the console by the user
//Go to apprunner>github connections>complete handshake
//else deployment will fail
//try terraform apply again after handshake


