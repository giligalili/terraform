
variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "guest-list-api"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro" # Cost-efficient option
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "guestlistdb"
}

variable "db_username" {
  description = "Database username"
  type        = string
  default     = "admin"
}

variable "eks_node_instance_type" {
  description = "EKS node instance type"
  type        = string
  default     = "t3.small" # Cost-efficient for development
}

variable "eks_desired_capacity" {
  description = "Desired number of EKS worker nodes"
  type        = number
  default     = 2
}

variable "eks_min_capacity" {
  description = "Minimum number of EKS worker nodes"
  type        = number
  default     = 1
}

variable "eks_max_capacity" {
  description = "Maximum number of EKS worker nodes"
  type        = number
  default     = 4
}

# terraform/terraform.tfvars.example
# Copy this file to terraform.tfvars and update values
project_name = "guest-list-api"
environment  = "dev"
aws_region   = "us-east-1"
