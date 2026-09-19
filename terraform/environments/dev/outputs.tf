output "vpc_id" {
  description = "ID of the dev VPC."
  value       = module.vpc.vpc_id
}

output "vpc_cidr" {
  description = "CIDR block of the dev VPC."
  value       = module.vpc.vpc_cidr
}

output "public_subnet_ids" {
  description = "IDs of the public subnets."
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "IDs of the private subnets."
  value       = module.vpc.private_subnet_ids
}

output "nat_gateway_ids" {
  description = "IDs of the NAT gateways."
  value       = module.vpc.nat_gateway_ids
}

output "management_instance_id" {
  description = "Management EC2 instance ID."
  value       = module.management_ec2.instance_id
}

output "management_public_ip" {
  description = "Management EC2 public IP."
  value       = module.management_ec2.instance_public_ip
}

output "management_private_ip" {
  description = "Management EC2 private IP."
  value       = module.management_ec2.instance_private_ip
}