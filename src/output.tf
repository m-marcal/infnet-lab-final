output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "web_sec_group" {
  description = "Security group attached to the Web instance"
  value       = aws_security_group.sg_web_instance.id
}

output "web_instance_id" {
  description = "Web instance id"
  value       = aws_instance.web.id
}

output "web_instance_address" {
  description = "Web instance ip"
  value       = "http://${aws_instance.web.public_ip}:80"
}