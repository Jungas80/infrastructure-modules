
#Example stack
```
module "cloudformation" {
  source = "./cloudformation"

  create_stack     = true
  create_stack_set = false

  stack_name       = "my-stack"
  template_body_file = "./test.yaml"
  parameters       = {}
  capabilities     = ["CAPABILITY_NAMED_IAM"]
  timeout_in_minutes = 10
}
```


#Example stack set
```
module "cloudformation" {
  source = "./cloudformation"

  create_stack     = false
  create_stack_set = true

  stack_set_name   = "my-stack-set"
  template_body_file = "./test.yaml"
  parameters       = {}
  capabilities     = ["CAPABILITY_NAMED_IAM"]
  timeout_in_minutes = 10
}
```
