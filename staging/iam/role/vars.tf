variable "name" {
    description = "nome da função"
}
variable "path_role" {
    description = "Path do Policy.json"
}
variable "aws_account_id" {
    description = "aws ID"
}
variable "policy_names" {
    description = "Policies used on IAM Role Creation"
    type        = list(string)
}