module "kms_key" {
  source                  = "./modules/aws_kms"
}

resource "aws_sns_topic" "Demo_Topic" {
  name                       = "Demo_Topic"
  kms_master_key_id          = module.kms_key.kms_key_arn

}

# Create an email subscription to the SNS topic
resource "aws_sns_topic_subscription" "Demo_Subscription" {
  topic_arn = aws_sns_topic.Demo_Topic.arn
  protocol  = "email"
  endpoint  = "ashwinikanagaraj3@gmail.com"  # Replace this with your email address
}




## Create an SNS topic
#resource "aws_sns_topic" "Demo_Topic" {
#  name = "Demo_Topic"
#}
#
## Create an email subscription to the SNS topic
#resource "aws_sns_topic_subscription" "Demo_Subscription" {
#  topic_arn = aws_sns_topic.Demo_Topic.arn
#  protocol  = "email"
#  endpoint  = "ashwinikanagaraj3@gmail.com"  # Replace this with your email address
#}
