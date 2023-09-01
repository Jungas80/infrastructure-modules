variable "create_stack" {
  description = "Whether to create a CloudFormation stack"
  type        = bool
  default     = true
}

variable "create_stack_set" {
  description = "Whether to create a CloudFormation stack set"
  type        = bool
  default     = false
}

variable "stack_name" {
  description = "The name of the stack"
  type        = string
  default     = ""
}

variable "stack_set_name" {
  description = "The name of the stack set"
  type        = string
  default     = ""
}

variable "template_body_file" {
  description = "The path to the file containing the template body"
  type        = string
}

variable "parameters" {
  description = "A list of parameters to pass to the stack set"
  type        = map(string)
}

variable "capabilities" {
  description = "A list of capabilities to pass to the stack set"
  type        = list(string)
  default     = []
}

variable "timeout_in_minutes" {
  description = "The amount of time that can pass before the stack set status becomes OUTDATED"
  type        = number
  default     = 60
}

variable "create_stack_set_instances" {
  description = "Whether to create stack set instances"
  type        = bool
  default     = false
}

variable "organizational_units_ids" {
  description = "A list of organizational units to deploy stack set instances to"
  type        = list(string)
  default     = []
}

variable "region" {
  description = "The region to deploy stack set instances to"
  type        = string
  default     = "us-east-1"
}