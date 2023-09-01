resource "aws_cloudformation_stack" "this_stack" {
  count              = var.create_stack ? 1 : 0
  name               = var.stack_name
  template_body      = file(var.template_body_file)
  timeout_in_minutes = var.timeout_in_minutes
  parameters         = var.parameters
  capabilities       = var.capabilities
}

resource "aws_cloudformation_stack_set" "this_stack_set" {
  count = var.create_stack_set ? 1 : 0

  name          = var.stack_set_name
  template_body = file(var.template_body_file)
  parameters    = var.parameters
  capabilities  = var.capabilities
}
