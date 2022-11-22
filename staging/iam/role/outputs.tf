output "instance_profile_name" {
    value = "${aws_iam_instance_profile.default.name}"
}
output "name" {
    value = "${aws_iam_role.default.name}"
}