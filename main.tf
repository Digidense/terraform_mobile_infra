module "Kms_module" {
  source = "git::https://github.com/Digidense/terraform_module.git//kms?ref=feature/DD-35/kms_module"
  aliases_name            = "alias/Kms_Demo_Module"
  description             = "kms module attachment"
  deletion_window_in_days = 7
  enable_key_rotation     = true
}
# Creating the sns topic
resource "aws_sns_topic" "Demo_Topic" {
  name              = var.sns_name
  kms_master_key_id = module.Kms_module.kms_key_arn
}

# Create an email subscription to the SNS topic
resource "aws_sns_topic_subscription" "Demo_Subscription" {
  topic_arn = aws_sns_topic.Demo_Topic.arn
  protocol  = "email"
  endpoint  = var.endpoint
}
