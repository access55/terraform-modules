variable "name" {
  description = "The name of the cluster (up to 255 letters, numbers, hyphens, and underscores)"
}
variable "app" {
  description = "The name of the cluster (up to 255 letters, numbers, hyphens, and underscores)"
}

variable "ecs_autoscale_max_instances" {
  description = "Max Containers Runners Autoscaling (up to 255 letters, numbers, hyphens, and underscores)"
}

variable "ecs_autoscale_min_instances" {
  description = "Min Containers Runners Autoscaling (up to 255 letters, numbers, hyphens, and underscores)"
}
variable "resource_id" {
  description = "Cluster Resource"
}
variable "scalable_dimension" {
  description = "AutoScaling Dimession"
}
variable "service_namespace" {
  description = "namespace serviço"
}