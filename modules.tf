module "us-east-1" {
  source = "./module"
   providers = {
    aws = "aws"
  }
}
module "eu-west-1" {
  source = "./module"
   providers = {
    aws = "aws.eu-west-1"
  }
}