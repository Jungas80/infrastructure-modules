output "stack_name" {
  description = "The name of the CloudFormation stack"
  value       = var.create_stack ? aws_cloudformation_stack.this_stack[0].name : ""
  depends_on  = [aws_cloudformation_stack.this_stack]
}

output "stack_set_name" {
  description = "The name of the CloudFormation stack set"
  value       = var.create_stack_set ? aws_cloudformation_stack_set.this_stack_set[0].name : ""
  depends_on  = [aws_cloudformation_stack_set.this_stack_set]
}
