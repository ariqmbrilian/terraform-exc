module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vpc-custom"
  cidr = "10.0.0.0/16"
  
  azs             = ["ap-southeast-1a"]
  private_subnets = ["10.0.3.0/24"]
  public_subnets  = ["10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true
}
