
resource "aws_lb_target_group" "default" {
  name        = var.name
  port        = var.port
  protocol    = var.protocol
  vpc_id      = var.vpc_id
  target_type = var.target_type

  health_check {
    interval            = var.health_check_interval
    healthy_threshold   = var.healthy_threshold
    unhealthy_threshold = var.unhealthy_threshold
    port                = var.healthcheck_port
    protocol            = var.protocol
  }

  tags = {
    ManagedBy = "Terraform"
  }
}
