# configure provider
provider "aws" {
  region  = var.region
  profile = "terraform"
}

# create VPC
module "vpc" {
  source                 = "../modules/vpc"
  region                 = var.region
  project_name           = var.project_name
  vpc_cidr               = var.vpc_cidr
  public_subnet_az1_cidr = var.public_subnet_az1_cidr
  public_subnet_az2_cidr = var.public_subnet_az2_cidr
  anywere_cidr           = var.anywere_cidr
}