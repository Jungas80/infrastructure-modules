output "stack_name" {
  value       = aws_cloudformation_stack.default.name
  description = "CloudFormation Stack resource name"
}

output "stack_arn" {
  value       = aws_cloudformation_stack.default.arn
  description = "CloudFormation Stack resource arn"
}
