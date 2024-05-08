module "vpc_modules" {
  source = "git::git@github.com:Digidense/terraform_module.git//vpc?ref=v2.0.0"

  cidr                 = var.cidr
  enable_dns           = var.enable_dns
  vpc-tag              = var.vpc-tag
  subnet_cidr          = var.subnet_cidr
  availability_zone    = var.availability_zone
  pub_subnet_tag1      = var.pub_subnet_tag1
  pub_subnet_tag2      = var.pub_subnet_tag2
  pri_subnet_tag1      = var.pri_subnet_tag1
  pri_subnet_tag2      = var.pri_subnet_tag2
  igw_tag              = var.igw_tag
  pub_rt_tag           = var.pub_rt_tag
  rt_cidr_block        = var.rt_cidr_block
  pri_rt_tag           = var.pri_rt_tag
  nat_gateway          = var.nat_gateway
  sg                   = var.sg
  ingress_rules        = var.ingress_rules
  egress_rules         = var.egress_rules
  endpoint             = var.endpoint
}
