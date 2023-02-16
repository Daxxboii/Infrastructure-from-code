module "us-east-2" {
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

/*module "path"{
  source = "./module"
}*/





