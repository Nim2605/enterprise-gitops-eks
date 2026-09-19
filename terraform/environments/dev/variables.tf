variable "aws_region" {
  description = "AWS region for the dev environment."
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Name of the project."
  type        = string
  default     = "enterprise-gitops-eks"
}

variable "environment" {
  description = "Environment name."
  type        = string
  default     = "dev"
}

variable "eks_cluster_name" {
  description = "Name of the EKS cluster."
  type        = string
  default     = "enterprise-gitops-eks-dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "Availability zones for the dev environment."
  type        = list(string)

  default = [
    "ap-south-1a",
    "ap-south-1b"
  ]
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets."
  type        = list(string)

  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets."
  type        = list(string)

  default = [
    "10.0.11.0/24",
    "10.0.12.0/24"
  ]
}

variable "enable_nat_gateway" {
  description = "Whether NAT gateways should be created."
  type        = bool
  default     = true
}

variable "one_nat_gateway_per_az" {
  description = "Whether to create one NAT gateway per availability zone."
  type        = bool
  default     = true
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH into the management server."
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name for the management server."
  type        = string
}

variable "public_key_path" {
  description = "Path to the management EC2 public SSH key."
  type        = string
}