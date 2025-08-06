resource "aws_security_group" "rdp" {
  name        = "khaled-rdp-sg"
  description = "Allow RDP access from anywhere"
  vpc_id      = var.vpc_id

  ingress {
    description      = "Allow RDP"
    from_port        = 3389
    to_port          = 3389
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Khaled-RDP-SG"
  }
}
