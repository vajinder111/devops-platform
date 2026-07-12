resource "aws_security_group" "bastion" {

  name        = "${var.environment}-bastion-sg"
  description = "Bastion Host Security Group"
  vpc_id      = var.vpc_id

  ingress {

    description = "SSH"

    from_port = 22
    to_port   = 22

    protocol = "tcp"

    cidr_blocks = var.allowed_ip

  }

  egress {

    from_port = 0
    to_port   = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {

    Name = "${var.environment}-bastion-sg"

  }

}