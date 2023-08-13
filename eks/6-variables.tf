variable "env" {
  description = "Environment name"
  type        = string
}

variable "eks_version" {
  description = "EKS version"
  type        = string
}

variable "eks_name" {
  description = "EKS cluster name"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type        = list(string)
}

variable "node_iam_policies" {
  description = "List of IAM policies to attach to the node role"
  type        = map(any)
  default = {
    1 = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
    2 = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
    3 = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
    4 = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  }
}

variable "node_groups" {
  description = "Map of node groups"
  type        = map(any)
}

variable "enable_irsa" {
  description = "Determines whether to create an OIDC provider for EKS IRSA"
  type        = bool
  default     = true
}