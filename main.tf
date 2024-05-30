module "API_Module" {
  source               = "git::https://github.com/Digidense/terraform_module.git//API?ref=feature/DD-46-API_GW"
  lambda_zip_file      = var.lambda_zip_file
  lambda_handler       = var.lambda_handler
  lambda_runtime       = var.lambda_runtime
  lambda_function_name = var.lambda_function_name
}
