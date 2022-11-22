variable "name" {}

variable "fifo" {}

variable "delay_seconds" {}

variable "max_message_size" {}

variable "message_retention_seconds" {}

variable "receive_wait_time_seconds" {}

variable "dead_letter_arn" {
  default = ""
}

variable "max_receive" {
  default = 1
}

variable "visibility_timeout_seconds" {}

variable "dlq" {
  description = "Used to determine if the queue will have a DLQ attached to it. Use 'dlq' to associate a dlq. This makes dead_letter_arn and max_receive mandatory"
}

variable "content_based_deduplication" {
  description = "If the queue if FIFO this boolean enables or not content_based_deduplication"
}

variable "dlq_name" {
  description = "(Optional) This is the human-readable name of the queue. If omitted, Terraform will assign a random name. IN CASE OF FIFO YOU'LL END UP WITH .fifo sufix in your name"
}

variable "dlq_delay_seconds" {
  description = "The time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds."
}

variable "dlq_max_message_size" {
  description = "(Optional) The limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 262144 bytes (256 KiB). The default for this attribute is 262144 (256 KiB)."
}

variable "dlq_message_retention_seconds" {
  description = "(Optional) The number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days)."
}

variable "dlq_receive_wait_time_seconds" {
  description = "(Optional) The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately."
}

variable "dlq_visibility_timeout_seconds" {
  description = "(Optional) The visibility timeout for the queue. An integer from 0 to 43200 (12 hours). The default for this attribute is 30."
}

variable "dlq_content_based_deduplication" {
  description = "If the queue if FIFO this boolean enables or not content_based_deduplication"
}

variable "dlq_max_receive" {
  description = "Quando o ReceiveCount de uma mensagem excede o maxReceiveCount de uma fila, o Amazon SQS move a mensagem para uma dead letter queue"
}