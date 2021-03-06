output "s3_bucket_id" {
  description = "s3 bucket id"
  value       = aws_s3_bucket.remote_state_bucket.id
}

output "s3_bucket_arn" {
  description = "s3 bucket arn"
  value       = aws_s3_bucket.remote_state_bucket.arn
}

output "instance_id" {
  description = "bastion ec2 instance id"
  value       = aws_instance.bastion.id
}

output "bastion_public_ip" {
  description = "bastion host public ip"
  value       = aws_instance.bastion.public_ip
}
