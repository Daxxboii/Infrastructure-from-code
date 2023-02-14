
variable "github_branch" {
  default = "main"
}

variable "github_repository_link"{
  default = "https://github.com/Daxxboii/Basic-express-app"
}

//According to documentation , github app handshake has to be done within the console by the user
//Go to apprunner>github connections>complete handshake
//else deployment will fail
//try terraform apply again after handshake


