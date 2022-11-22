resource "aws_lb_listener" "TLS" {
  count             = var.ssl_certificate != "" ? 1 : 0
  load_balancer_arn = var.load_balancer_arn
  port              = var.port
  protocol          = "TLS"
  certificate_arn   = var.certificate_arn

  default_action {
    type             = var.type
    target_group_arn = var.target_group_arn
  }
}

resource "aws_lb_listener" "TCP" {
  count             = var.ssl_certificate == "" ? 1 : 0
  load_balancer_arn = var.load_balancer_arn
  port              = var.port
  protocol          = "TCP"

  default_action {
    type             = var.type
    target_group_arn = var.target_group_arn
  }
}
