# 🌐 CLOUDFORMATION Terraform Module

:rocket: This module handles the **creation of a Cloudformation Stack or Stack Set in AWS**. It provides the following features:




#Example stack_set to deploy to an OU
```
terraform {
  source = "git::https://github.com/Jungas80/infrastructure-modules.git//cloudformation/stack-set?ref=cloudformation-stack-set-v1.0"
}

include {
  path = find_in_parent_folders()
}

locals {
  common_vars = read_terragrunt_config(find_in_parent_folders("common_vars.hcl"))
}

inputs = {
  name                  = "ssm-stack-set"
  description           = "StackSet to deploy SSM"
  permission_model      = "SERVICE_MANAGED"
  template_body         = file("${get_terragrunt_dir()}/ssm.yaml")
  parameters            = {}
  capabilities          = ["CAPABILITY_NAMED_IAM"]
  
  auto_deployment = {
    enabled                          = true
    retain_stacks_on_account_removal = false
  }

  stackset_instance_organizational_unit_ids = ["r-rzx2"]
  stackset_instance_region                 = "us-east-1"
}
```


#Example stack set to deploy to specific accounts. Notice the permission_model is SELF_MANAGED and the utilization of the administration_role_arn and execution_role_name
```
terraform {
  source = "git::https://github.com/Jungas80/infrastructure-modules.git//cloudformation/stack-set?ref=cloudformation-stack-set-v1.0"
}

include {
  path = find_in_parent_folders()
}

locals {
  common_vars = read_terragrunt_config(find_in_parent_folders("common_vars.hcl"))
}

inputs = {
  name                  = "my-stack-set"
  description           = "my-stack-set"
  permission_model      = "SELF_MANAGED"
  template_body         = file("${get_terragrunt_dir()}/ssm.yaml")
  parameters            = {}
  capabilities          = ["CAPABILITY_NAMED_IAM"]
  
  administration_role_arn = "arn:aws:iam::817091419779:role/AdministrationRole"
  execution_role_name     = "AWSCloudFormationStackSetExecutionRole"
  
  auto_deployment = {
    enabled                          = false
    retain_stacks_on_account_removal = false
  }
  
  stackset_instance_account_id = "455481990526"
  stackset_instance_region     = "us-east-1"
}
```

#Example stack to deploy to a single account
```
terraform {
  source = "git::https://github.com/Jungas80/infrastructure-modules.git//cloudformation/stack?ref=main"
}

include {
  path = find_in_parent_folders()
}

locals {
  common_vars = read_terragrunt_config(find_in_parent_folders("common_vars.hcl"))
}

inputs = {
  name                  = "test-stack"
  description           = "test-stack"
  template_body         = file("${get_terragrunt_dir()}/ssm.yaml")
  parameters            = {}
  capabilities          = ["CAPABILITY_NAMED_IAM"]
}
```