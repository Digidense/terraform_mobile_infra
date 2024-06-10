module "rds_database" {
  source                  = "./modules/rds"
  secret_name             = var.secret_name
  secret-tags             = var.secret-tags
  db_username             = var.db_username
  db_username_password    = var.db_username_password
  recovery_window_in_days = var.recovery_window_in_days
  db_name                 = var.db_name
  instance_class          = var.instance_class
  engine_name             = var.engine_name
  engine_version          = var.engine_version
  parameter_group_name    = var.parameter_group_name
  value_t                 = var.value_t
  value_f                 = var.value_f
  tag_name                = var.tag_name
  aws_db_subnet_group     = var.aws_db_subnet_group
  application_user        = var.application_user
  policy                  = var.policy
  backup_window           = var.backup_window
  storage_type            = var.storage_type

}