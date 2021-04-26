resource "aws_appautoscaling_target" "app_scale_target" {
  service_namespace  = var.service_namespae
  resource_id        = var.resource_id
  scalable_dimension = var.scalable_dimension
  max_capacity       = var.ecs_autoscale_max_instances
  min_capacity       = var.ecs_autoscale_min_instances
}