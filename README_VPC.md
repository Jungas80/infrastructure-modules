# 🌐 VPC Terraform Module 

## 🚀 Overview

This module handles the **creation of a VPC in AWS**. It provides the following features:

- **VPC Creation**
- **Public and Private Subnets** across multiple Availability Zones
- **Internet Gateway** and **NAT Gateway** for internet access
- **Custom tags** for Private and Public Subnets

---

## 🛠️ Compatibility

This module is designed for use with **Terraform 0.14** and higher.

---

## 📝 Usage

To use this module, add the following code to your Terraform configuration file:

 
```hcl
module "vpc" {
  source = "git::https://github.com/Jungas80/infrastructure-modules.git//vpc?ref=vpc-v0.0.2"
  
  env             = var.env
  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.0.0/19", "10.0.32.0/19"]
  public_subnets  = ["10.0.64.0/19", "10.0.96.0/19"]

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/dev-demo"  = "owned"
  }

  public_subnet_tags = {
    "kubernetes.io/role/elb"         = "1"
    "kubernetes.io/cluster/dev-demo" = "owned"
  }
}
```

---

## 📚 Variables

- `env`: The environment where this VPC will be used (e.g., `dev`, `staging`, `production`).
- `azs`: List of Availability Zones where the subnets will be created.
- `private_subnets`: CIDR blocks for the private subnets.
- `public_subnets`: CIDR blocks for the public subnets.
- `private_subnet_tags`: Custom tags for the private subnets.
- `public_subnet_tags`: Custom tags for the public subnets.

For more details on the variables, check the [`variables.tf`](./7-variables.tf) file.

---

## 📤 Outputs

- `vpc_id`: The ID of the VPC.
- `public_subnet_ids`: List of IDs of the public subnets.
- `private_subnet_ids`: List of IDs of the private subnets.

For more details on the outputs, check the [`outputs.tf`](./6-outputs.tf) file.

---
