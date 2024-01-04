data "template_file" "user_data" {
  template = file("${path.module}/user_data.sh")

  vars = {
    project_name = var.project_name
  }
}

resource "aws_instance" "web" {
  ami           = var.ubuntu_ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public["public_subnet_1"].id

  user_data = base64encode(data.template_file.user_data.rendered)

  vpc_security_group_ids = [aws_security_group.sg_web_instance.id]

  key_name = var.ssh_key

  tags = {
    Name = "${var.project_name}-ec2-instance"
  }
}