#------------------------------------------------------------------------------
# ECS CLUSTER
#------------------------------------------------------------------------------
resource "aws_ecs_cluster" "cluster" {
  name                  = var.name
  tags                  = var.tags
    capacity_providers = ["FARGATE_SPOT", "FARGATE"]

  default_capacity_provider_strategy {
    capacity_provider = "FARGATE"
  }
}