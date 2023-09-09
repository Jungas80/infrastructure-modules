output "stackset" {
  value       = aws_cloudformation_stack_set.default.name
  description = "The AWS Cloudformation StackSet Name."
}

output "stack_set_arn" {
  value       = aws_cloudformation_stack_set.default.arn
  description = "The ARN of the CloudFormation Stack Set."
}

output "stackset_instance_arns" {
  value = var.permission_model == "SELF_MANAGED" ? [for instance in aws_cloudformation_stack_set_instance.default : instance.stack_id] : []
  description = "The ARNs of the AWS Cloudformation StackSet Instances for SELF_MANAGED permission model."
}

output "stack_instance_summaries" {
  value = var.permission_model == "SERVICE_MANAGED" ? try(aws_cloudformation_stack_set_instance.default[0].stack_instance_summaries, []) : []
  description = "The Stack Instance Summaries for SERVICE_MANAGED permission model."
}