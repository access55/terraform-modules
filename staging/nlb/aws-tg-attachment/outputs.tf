output "id" {
    description = "List of IDs of placement"
    value       = aws_lb_target_group_attachment.default.*.id
}