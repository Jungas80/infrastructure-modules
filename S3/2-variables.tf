variable "bucket_name" {
  description = "The name of the bucket."
  type        = string
}

variable "bucket_acl" {
  description = "The canned ACL to apply. Defaults to 'private'."
  default     = "private"
  type        = string
}

variable "versioning_enabled" {
  description = "Enable versioning for the S3 bucket."
  default     = false
  type        = bool
}

variable "tags" {
  description = "A map of tags to apply to the bucket."
  default     = {}
  type        = map(string)
}

variable "force_destroy" {
  description = "Force destroy the bucket when terraform destroy is executed."
  default     = false
  type        = bool
}
