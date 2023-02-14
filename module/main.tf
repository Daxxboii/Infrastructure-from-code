resource "aws_apprunner_connection" "example" {
  connection_name = "Daxx"
  provider_type       = "GITHUB"
}

resource "aws_apprunner_auto_scaling_configuration_version" "example" {
  auto_scaling_configuration_name = "example"
  max_concurrency                 = 100
  max_size                        = 10
  min_size                        = 2
 
  tags = {
    Name = "apprunner-auto-scaling-example"
  }
}
 
resource "aws_apprunner_service" "example" {
  auto_scaling_configuration_arn = aws_apprunner_auto_scaling_configuration_version.example.arn
 
  service_name = "example"
 
  source_configuration {
    authentication_configuration {
      connection_arn = aws_apprunner_connection.example.arn
    }
 
    code_repository {
      code_configuration {
        configuration_source = "REPOSITORY"
      }
 
      repository_url = var.github_repository_link
 
      source_code_version {
        type  = "BRANCH"
        value = var.github_branch
      }
    }

    auto_deployments_enabled = true
    
  }
  tags = {
    Name = "my-apprunner-service"
  }
}
 
