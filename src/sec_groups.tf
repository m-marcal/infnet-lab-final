resource "aws_security_group" "sg_web_instance" {
  name        = "web-instance-sg"
  description = "Security group for Web instance"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "${var.project_name}-ec2-httpd"
  }

  ingress {
    description     = "SSH"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description     = "Allow inbound traffic on port http:80"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}