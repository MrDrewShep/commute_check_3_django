variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ami" {
  description = "EC2 AMI id"
  type        = string
  default     = ""
}

variable "eip" {
  description = "Elastic IPv4 address"
  type        = string
  default     = ""
}

variable "initial_db_password" {
  description = "Initial password for RDS instance"
  type        = string
  default     = ""
}