resource "aws_lb" "nlb_internal" {
  count                      = var.internal ? 1 : 0
  enable_cross_zone_load_balancing = "true"
  name                       = var.name
  internal                   = var.internal
  load_balancer_type         = "network"
  subnets                    = var.internal_subnets
  enable_deletion_protection = var.enable_deletion_protection
  idle_timeout               = var.idle_timeout

  tags = {
    ManagedBy = "Terraform"
  }
}

resource "aws_lb" "nlb_external" {
  count                      = var.internal == false ? 1 : 0
  enable_cross_zone_load_balancing = "true"
  name                       = var.name
  internal                   = var.internal
  load_balancer_type         = "network"
  subnets                    = var.external_subnets
  enable_deletion_protection = var.enable_deletion_protection
  idle_timeout               = var.idle_timeout

  tags = {
    ManagedBy = "Terraform"
  }
}
