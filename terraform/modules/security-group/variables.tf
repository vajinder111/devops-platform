variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "environment" {
  description = "Environment Name"
  type        = string
}

variable "allowed_ip" {
  description = "Office/Public IP for SSH"
  type        = list(string)
}