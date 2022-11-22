resource "aws_security_group" "default" {
  name        = "${var.sg_name}-sg"
  description = var.description
  vpc_id      = var.vpc_id

  tags = {
    ManagedBy = "Terraform"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
