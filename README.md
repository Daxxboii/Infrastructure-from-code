# Infrastructure-from-code

## What it does?
- Deploy an AWS AppRunner service through terraform 
- Deploys the service to multiple regions 
## Commands
```
terraform init
terraform plan
terraform apply
```
## Advantages
- User doesn't have to deploy the service manually 
- User doesn't have to bake/build the containers , app runner takes care of it 
- CI CD capabilities of AWS AppRunner stops the updated source code from throwing an error and falls back to the previous version in case of an error/exception

> Note 1: After deploying the user has to authorize github handshake via aws console in app runner
> Note 2: In case app runner is not upto the mark and is not supported in the desired use case , check out the file named ```backup-to-ignore.tf``` , it deploys a codedeploy pipeline along with codebuild which pulls source code from github and bakes it into a container 


