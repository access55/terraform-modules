resource "aws_sqs_queue_policy" "test" {
  queue_url = "${var.sqs_id}"
  policy    = "${var.policy}"
}