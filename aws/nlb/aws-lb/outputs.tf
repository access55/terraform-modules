output "nlb_arn" {
  value = var.internal ? concat(aws_lb.nlb_internal.*.arn, list(""))[0] : concat(aws_lb.nlb_external.*.arn, list(""))[0]
}

output "dns_name" {
  value = var.internal ? concat(aws_lb.nlb_internal.*.dns_name, list(""))[0] : concat(aws_lb.nlb_external.*.dns_name, list(""))[0]
}
