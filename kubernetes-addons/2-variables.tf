variable "env" {
  description = "Environment name"
  type        = string
}

variable "eks_name" {
  description = "EKS cluster name"
  type        = string
}

variable "enable_cluster_autoscaler" {
  description = "Enable cluster autoscaler"
  type        = bool
  default     = false
}

variable "cluster_autoscaler_helm_version" {
  description = "Cluster autoscaler helm chart version"
  type        = string
}

variable "openid_provider_arn" {
  description = "OpenID Connect provider ARN"
  type        = string
}

