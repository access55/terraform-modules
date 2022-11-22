resource "aws_sqs_queue" "standard_without_dlq" {
  count                      = "${!var.dlq && !var.fifo ? 1 : 0}"
  name                       = "${var.name}"
  delay_seconds              = "${var.delay_seconds}"
  max_message_size           = "${var.max_message_size}"
  message_retention_seconds  = "${var.message_retention_seconds}"
  receive_wait_time_seconds  = "${var.receive_wait_time_seconds}"
  visibility_timeout_seconds = "${var.visibility_timeout_seconds}"

}

resource "aws_sqs_queue" "standard_dlq" {
  count                      = "${var.dlq && !var.fifo ? 1 : 0}"
  name                       = "${var.dlq_name}"
  delay_seconds              = "${var.dlq_delay_seconds}"
  max_message_size           = "${var.dlq_max_message_size}"
  message_retention_seconds  = "${var.dlq_message_retention_seconds}"
  receive_wait_time_seconds  = "${var.dlq_receive_wait_time_seconds}"
  visibility_timeout_seconds = "${var.dlq_visibility_timeout_seconds}"
}

resource "aws_sqs_queue" "standard_with_dl" {
  count                      = "${var.dlq && !var.fifo ? 1 : 0}"
  name                       = "${var.name}"
  delay_seconds              = "${var.delay_seconds}"
  max_message_size           = "${var.max_message_size}"
  message_retention_seconds  = "${var.message_retention_seconds}"
  receive_wait_time_seconds  = "${var.receive_wait_time_seconds}"
  visibility_timeout_seconds = "${var.visibility_timeout_seconds}"

  redrive_policy = <<EOF
  {
    "deadLetterTargetArn": "${element(concat(aws_sqs_queue.standard_dlq.*.arn, list("")), 0)}",
    "maxReceiveCount": ${var.max_receive}
  }
  EOF

  depends_on = ["aws_sqs_queue.standard_dlq"]
}

resource "aws_sqs_queue" "fifo_dlq" {
  count                      = "${var.dlq && var.fifo ? 1 : 0}"
  name                       = "${var.dlq_name}.fifo"
  delay_seconds              = "${var.dlq_delay_seconds}"
  max_message_size           = "${var.dlq_max_message_size}"
  message_retention_seconds  = "${var.dlq_message_retention_seconds}"
  receive_wait_time_seconds  = "${var.dlq_receive_wait_time_seconds}"
  visibility_timeout_seconds = "${var.dlq_visibility_timeout_seconds}"
  content_based_deduplication = "${var.dlq_content_based_deduplication}"
  fifo_queue = "${var.fifo}"

}

resource "aws_sqs_queue" "fifo_with_dl" {
  count                      = "${var.dlq && var.fifo ? 1 : 0}"
  name                       = "${var.name}.fifo"
  delay_seconds              = "${var.delay_seconds}"
  max_message_size           = "${var.max_message_size}"
  message_retention_seconds  = "${var.message_retention_seconds}"
  receive_wait_time_seconds  = "${var.receive_wait_time_seconds}"
  visibility_timeout_seconds = "${var.visibility_timeout_seconds}"
  content_based_deduplication = "${var.content_based_deduplication}"
  fifo_queue = "${var.fifo}"

  redrive_policy = <<EOF
  {
    "deadLetterTargetArn": "${element(concat(aws_sqs_queue.fifo_dlq.*.arn, list("")), 0)}",
    "maxReceiveCount": ${var.max_receive}
  }
  EOF

  depends_on = ["aws_sqs_queue.fifo_dlq"]
}

resource "aws_sqs_queue" "fifo_without_dl" {
  count                      = "${!var.dlq && var.fifo ? 1 : 0}"
  name                       = "${var.name}.fifo"
  delay_seconds              = "${var.delay_seconds}"
  max_message_size           = "${var.max_message_size}"
  message_retention_seconds  = "${var.message_retention_seconds}"
  receive_wait_time_seconds  = "${var.receive_wait_time_seconds}"
  visibility_timeout_seconds = "${var.visibility_timeout_seconds}"
  content_based_deduplication = "${var.content_based_deduplication}"
  fifo_queue = "${var.fifo}"
}
