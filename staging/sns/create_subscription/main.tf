# resource "aws_sns_topic_subscription" "user_updates_email_target" {
#  count     = "${var.protocol == "email" ? 1 : 0}"
#  topic_arn = "arn:aws:sns:us-east-1:171518999593:${var.sns_name}"
#  protocol  = "email"
#  endpoint  = "${var.endpoint_name}"
# }

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  count     = "${var.protocol == "sqs" ? 1 : 0}"
  topic_arn = "arn:aws:sns:us-east-1:171518999593:${var.sns_name}"
  protocol  = "sqs"
  endpoint  = "arn:aws:sqs:us-east-1:171518999593:${var.endpoint_name}"
}

resource "aws_sns_topic_subscription" "user_updates_lambda_target" {
  count     = "${var.protocol == "lambda" ? 1 : 0}"
  topic_arn = "arn:aws:sns:us-east-1:171518999593:${var.sns_name}"
  protocol  = "lambda"
  endpoint  = "arn:aws:lambda:us-east-1:171518999593:function:${var.endpoint_name}"
}