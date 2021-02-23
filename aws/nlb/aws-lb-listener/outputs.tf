output "arn_https" {
  value = element(concat(aws_lb_listener.TLS.*.arn, list("")), 0)
}

output "arn_http" {
  value = element(concat(aws_lb_listener.TCP.*.arn, list("")), 0)
}
