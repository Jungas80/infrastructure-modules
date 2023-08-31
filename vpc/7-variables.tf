variable "env" {
  description = "Environment name"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "private_subnets" {
  description = "CIDR for the private subnets"
  type        = list(string)
}

variable "public_subnet_map_public_ip_on_launch" {
  description = "Map public IP on launch for the public subnets"
  type        = bool
  default     = true
}

variable "public_subnet_enable_resource_name_dns_a_record_on_launch" {
  description = "Enable resource name DNS A record on launch for the public subnets"
  type        = bool
  default     = true
}

variable "private_subnet_enable_resource_name_dns_a_record_on_launch" {
  description = "Enable resource name DNS A record on launch for the private subnets"
  type        = bool
  default     = true
}

variable "public_subnets" {
  description = "CIDR for the public subnets"
  type        = list(string)
}

variable "public_subnet_tags" {
  description = "Tags for the public subnets"
  type        = map(any)
}

variable "private_subnet_tags" {
  description = "Tags for the private subnets"
  type        = map(any)
}