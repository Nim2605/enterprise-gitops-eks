variable "aws_region" {
  description = "AWS region where the Terraform state bucket will be created."
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Name of the project."
  type        = string
  default     = "enterprise-gitops-eks"
}