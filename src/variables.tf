variable "aws_region" {
  description = "AWS region to deploy the resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "The project name to be used as a prefix for resources"
  type        = string
  default     = "infnet"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  type = map(object({
    cidr_block = string
    av_zone = string
  }))

  default = {
    public_subnet_1 = {
      cidr_block = "10.0.1.0/24"
      av_zone = "us-east-1a"
    }
  }
}

variable "ubuntu_ami" {
  type = string
  default = "ami-0c7217cdde317cfec"
}

variable "instance_type" {
  description = "T-shirt size"
  type = string
  default = "t2.small"
}

variable "ssh_key" {
    description = "SSH Key"
    type = string
    default = "vockey"  
}