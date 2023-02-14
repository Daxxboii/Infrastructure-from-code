/*variable "codebuild_role_arn"{
  default = "arn:aws:iam::332846643371:role/CodeBuild"

}
variable "codebuild_project_name"{
  default = "codebuildproject"
}

variable "codepipeline" {
      default = "codepipeline-name"
    } */

/*variable "github_token" {
  default = ""
}
variable "github_owner" {
  default = "Daxxboii"
}
variable "github_repo" {
  default = "Basic-express-app"
}*/

variable "github_branch" {
  default = "main"
}

variable "repo_location"{
  default = "https://github.com/Daxxboii/Basic-express-app"
}

//According to documentation , github OAuth handshake has to be done within the console by the user


