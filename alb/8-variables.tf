variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "user_data" {
  description = "User data script for instances"
  type        = string
  default     = ""
}

variable "ebs_optimized" {
  description = "Whether the instance is optimized for EBS"
  type        = bool
  default     = false
}

# EBS variables
variable "device_name" {
  description = "Device name for EBS volume"
  type        = string
  default     = "/dev/xvda"
}

variable "volume_type" {
  description = "EBS volume type"
  type        = string
  default     = "gp2"
}

variable "volume_size" {
  description = "EBS volume size in GiB"
  type        = number
  default     = 8
}

# ASG variables
variable "min_size" {
  description = "Minimum size of the Auto Scaling Group"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum size of the Auto Scaling Group"
  type        = number
  default     = 3
}

variable "desired_capacity" {
  description = "Desired number of instances in the Auto Scaling Group"
  type        = number
  default     = 1
}

# ALB variables
variable "alb_internal" {
  description = "Whether the ALB is internal or external"
  type        = bool
  default     = false
}

variable "alb_subnets" {
  description = "Subnets for the ALB"
  type        = list(string)
}

variable "enable_deletion_protection" {
  description = "Whether to enable deletion protection for the ALB"
  type        = bool
  default     = false
}

# Target Group variables
variable "target_group_port" {
  description = "Port for the target group"
  type        = number
  default     = 80
}

variable "target_group_protocol" {
  description = "Protocol for the target group"
  type        = string
  default     = "HTTP"
}

# Other variables
variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for instances"
  type        = list(string)
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}

# Listener variables
variable "listener_port" {
  description = "Port for the listener"
  type        = number
  default     = 80
}

variable "listener_protocol" {
  description = "Protocol for the listener"
  type        = string
  default     = "HTTP"
}

# Health check variables
variable "health_check_interval" {
  description = "Health check interval"
  type        = number
  default     = 30
}

variable "health_check_path" {
  description = "Health check path"
  type        = string
  default     = "/"
}

variable "health_check_port" {
  description = "Health check port"
  type        = string
  default     = "traffic-port"
}

variable "health_check_protocol" {
  description = "Health check protocol"
  type        = string
  default     = "HTTP"
}

variable "health_check_timeout" {
  description = "Health check timeout"
  type        = number
  default     = 5
}

variable "healthy_threshold" {
  description = "Healthy threshold"
  type        = number
  default     = 5
}

variable "unhealthy_threshold" {
  description = "Unhealthy threshold"
  type        = number
  default     = 2
}


variable "alb_allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to access the ALB"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}


variable "ec2_allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to access the EC2 instances"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}