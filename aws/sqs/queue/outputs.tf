output "standard_without_dlq_arn" {
  value = "${element(concat(aws_sqs_queue.standard_without_dlq.*.arn, list("")), 0)}"
}

output "standard_dlq_arn" {
  value = "${element(concat(aws_sqs_queue.standard_dlq.*.arn, list("")), 0)}"
}

output "standard_with_dl_arn" {
  value = "${element(concat(aws_sqs_queue.standard_with_dl.*.arn, list("")), 0)}"
}

output "fifo_dlq_arn" {
  value = "${element(concat(aws_sqs_queue.fifo_dlq.*.arn, list("")), 0)}"
}

output "fifo_with_dl_arn" {
  value = "${element(concat(aws_sqs_queue.fifo_with_dl.*.arn, list("")), 0)}"
}

output "fifo_without_dl_arn" {
  value = "${element(concat(aws_sqs_queue.fifo_without_dl.*.arn, list("")), 0)}"
}

output "fifo_dlq_id" {
  value = "${element(concat(aws_sqs_queue.fifo_dlq.*.id, list("")), 0)}"
}

output "standard_dlq_id" {
  value = "${element(concat(aws_sqs_queue.standard_dlq.*.id, list("")), 0)}"
}

output "standard_with_dlq_id" {
  value = "${element(concat(aws_sqs_queue.standard_with_dl.*.id, list("")), 0)}"
}

output "standard_without_dlq_id" {
  value = "${element(concat(aws_sqs_queue.standard_without_dlq.*.id, list("")), 0)}"
}


output "fifo_with_dlq_id" {
  value = "${element(concat(aws_sqs_queue.fifo_with_dl.*.id, list("")), 0)}"
}

output "fifo_without_dlq_id" {
  value = "${element(concat(aws_sqs_queue.fifo_without_dl.*.id, list("")), 0)}"
}
