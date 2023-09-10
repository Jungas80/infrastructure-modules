output "stack_name" {
  value       = aws_cloudformation_stack.default.name
  description = "CloudFormation Stack resource name"
}

output "stack_id" {
  value       = aws_cloudformation_stack.default.id
  description = "CloudFormation Stack resource ID"
}
