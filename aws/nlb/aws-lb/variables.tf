variable "name" {}

variable "internal" {
  type    = bool
  default = true
}

variable "internal_subnets" {
  type = list(string)
}

variable "external_subnets" {
  default = []
  type    = list(string)
}

variable "enable_deletion_protection" {
  type    = bool
  default = false
}

variable "idle_timeout" {
  type    = number
  default = 60
}

variable "weight" {
  type    = number
  default = 0
}

variable "identifier" {
  description = "Used only on weighted records, leave \"\" if not weighted"
  default     = ""
}
