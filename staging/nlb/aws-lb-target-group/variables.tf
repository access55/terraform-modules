variable "name" {}
variable "port" {}

variable "healthcheck_port" {
  default = "traffic-port"
}

variable "protocol" {
  default = "TCP"
}

variable "target_type" {
  default = "instance"
}

variable "vpc_id" {}

variable "health_check_interval" {
  default = 30
}

variable "healthy_threshold" {
  default = 3
}

variable "unhealthy_threshold" {
  default = 3
}

variable "health_check_timeout" {
  default = 10
}
