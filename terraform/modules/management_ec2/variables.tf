variable "project_name" {
  description = "Name of the project."
  type        = string
}

variable "environment" {
  description = "Environment name."
  type        = string
}

variable "instance_name" {
  description = "Name of the management EC2 instance."
  type        = string
  default     = "management-server"
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t3.micro"
}

variable "vpc_id" {
  description = "ID of the VPC where the instance will be created."
  type        = string
}

variable "subnet_id" {
  description = "ID of the public subnet where the instance will be created."
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH into the management server."
  type        = string
}

variable "key_name" {
  description = "Name of the EC2 key pair."
  type        = string
}

variable "enable_public_ip" {
  description = "Whether to associate a public IP with the instance."
  type        = bool
  default     = true
}

variable "public_key_path" {
  description = "Path to the SSH public key."
  type        = string
}