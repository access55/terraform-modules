# ----------------------------------------------------------------------------------------------------------------------
# VARIÁVEIS OBRIGATÓRIAS
# ----------------------------------------------------------------------------------------------------------------------

variable "port" {
  type        = number
  description = "Porta do rule"
}

variable "ips_sg_list" {
  type = list(string)
}

variable "security_group_id" {
  description = "ID do security group que será relacinado a essa rule"
  type        = string
}

# ----------------------------------------------------------------------------------------------------------------------
# VARIÁVEIS OPCIONAIS
# ----------------------------------------------------------------------------------------------------------------------

variable "protocol" {
  default = "tcp"
}

variable "description" {
  default     = ""
  description = "Uma descrição opcional para ser adicionada a regra"
  type        = string
}
