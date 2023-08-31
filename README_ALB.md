
# 🌐 ALB Terraform Module 

This module handles the creation of an Application Load Balancer (ALB) along with an Auto Scaling Group (ASG) in AWS.

## ⭐ Features

- Application Load Balancer (ALB) creation.
- Auto Scaling Group (ASG) with Launch Template.
- Security Groups for ALB and ASG instances.
- Listener and Target Group for ALB.

## ⚙️ Terraform Version

This module is designed for use with Terraform 0.14 and higher.

## 📄 Usage

Here's an example of how you can invoke this module in your Terraform code:

```
module "asg_alb" {
  source = "git::https://github.com/Jungas80/infrastructure-modules.git//alb?ref=alb-v0.0.1"

  # Use outputs from the VPC module
  vpc_id      = module.vpc.vpc_id
  subnet_ids  = module.vpc.public_subnet_ids
  alb_subnets = module.vpc.public_subnet_ids

  ami_id      = "THE AMI ID YOU NEED"
  key_name    = "YOUR KEY PAIR"
}

output "alb_dns_name" {
  value = module.asg_alb.alb_dns_name
}

output "asg_name" {
  value = module.asg_alb.asg_name
}

output "target_group_arn" {
  value = module.asg_alb.target_group_arn
}
```

> ⚠️ **Important:** Make sure to replace `THE AMI ID YOU NEED` and `YOUR KEY PAIR` with your actual AMI ID and Key Pair name, respectively.

## 🎛 Variables

- `vpc_id`: The ID of the VPC where resources will be deployed.
- `subnet_ids`: List of subnet IDs for the ASG.
- `alb_subnets`: List of subnet IDs for the ALB.
- `ami_id`: AMI ID for the EC2 instances in the ASG.
- `key_name`: Key Pair for the EC2 instances in the ASG.

For more details, check the `variables.tf` file in the module directory.

## 📤 Outputs

- `alb_dns_name`: The DNS name of the ALB.
- `asg_name`: The name of the ASG.
- `target_group_arn`: The ARN of the Target Group.

For more details, check the `outputs.tf` file in the module directory.
