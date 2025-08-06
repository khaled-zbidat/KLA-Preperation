variable "aws_region" {
  description = "The AWS region to deploy the VM"
  type        = string
  default     = "eu-north-1"
}

variable "windows_ami" {
  description = "The Windows AMI ID to use"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t3.medium"
}

variable "key_name" {
  description = "Name of the existing AWS key pair"
  type        = string
  default     = "khaled-aws"
}

variable "vpc_id" {
  description = "The VPC to use"
  type        = string
}

variable "subnet_id" {
  description = "The subnet to launch the instance in"
  type        = string
}
