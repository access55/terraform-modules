variable "load_balancer_arn" {}

variable "port" {
}

variable "ssl_certificate" {
  default = ""
}

variable "certificate_arn" {
  default = ""
}

variable "type" {
  default = "forward"
}

variable "target_group_arn" {}
