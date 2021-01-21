resource "aws_iam_role" "default" {
    name                            = "${var.name}"
    permissions_boundary            = "arn:aws:iam::${var.aws_account_id}:policy/AdminBasePolicy"
    assume_role_policy              = "${var.path_role}"
}
resource "aws_iam_instance_profile" "default" {
    name                            = aws_iam_role.default.name
    role                            = aws_iam_role.default.name  
}
resource "aws_iam_policy_attachment" "default" {
    count                           = length(var.policy_names)
    name                            = "${var.name}"
    roles                           = ["${aws_iam_role.default.name}"]
    policy_arn                      = "arn:aws:iam:aws:policy/${var.policy_names[count.index]}"
}