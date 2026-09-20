output "instance_id" {
  description = "ID of the management EC2 instance."
  value       = aws_instance.management.id
}

output "instance_private_ip" {
  description = "Private IP of the management EC2 instance."
  value       = aws_instance.management.private_ip
}

output "instance_public_ip" {
  description = "Public IP of the management EC2 instance."
  value       = aws_instance.management.public_ip
}

output "security_group_id" {
  description = "Security group ID of the management EC2 instance."
  value       = aws_security_group.management.id
}

output "iam_role_name" {
  description = "IAM role attached to the management EC2 instance."
  value       = aws_iam_role.management.name
}

output "iam_role_arn" {
  description = "IAM role ARN used by the management EC2 instance"
  value       = aws_iam_role.management.arn
}