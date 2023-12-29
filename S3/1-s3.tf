resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = var.bucket_acl

  versioning {
    enabled = var.versioning_enabled
  }

  tags = var.tags

  force_destroy = var.force_destroy
}
