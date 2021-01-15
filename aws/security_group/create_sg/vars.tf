# ----------------------------------------------------------------------------------------------------------------------
# VARIÁVEIS OBRIGATÓRIAS
# ----------------------------------------------------------------------------------------------------------------------

variable "sg_name" {
  type        = string
  description = "Nome do security group"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID referente a que o security group irá pertencer"
}

# ----------------------------------------------------------------------------------------------------------------------
# VARIÁVEIS OPCIONAIS
# ----------------------------------------------------------------------------------------------------------------------

variable "description" {
  type        = string
  description = "Descrição do grupo"
  default     = "Managed by Terraform"
}
