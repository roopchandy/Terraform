module "terraform-aws-s3-bucket" {
  source = "github.com/terraform-aws-modules/terraform-aws-s3-bucket"

  bucket                  = "datatransfer-testing"
  object_lock_enabled     = false
  expected_bucket_owner   = ""
  block_public_acls       = true
  restrict_public_buckets = true
  tags = {
    ContactEmail = "Mitesh.Turakhiya@syngenta.com"
  }
  block_public_policy = true
  owner               = "datatransfer-testing"
  ignore_public_acls  = true
}

