module "vpc_module" {
  source      = "git::https://github.com/Digidense/terraform_module.git//route_53?ref=feature/DD-45/route-53"
  domain_name = var.domain_name

}
