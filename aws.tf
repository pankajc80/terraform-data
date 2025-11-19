provider "aws" {}

resource "aws_instance" "my-ec2" {
  ami           = "ami-024294779773cf91a"
  instance_type = "t3.small"

  tags = {
    Name        = var.instance_tags["Name"]
    Team        = var.instance_tags["Team"]
    Environment = var.instance_tags["Environment"]
  }
  # vpc_security_group_ids = aws_security_group.allow_ssh.id != null ? [aws_security_group.allow_ssh.id] : var.security_group_ids
}

/*
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Security group to allow SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
*/