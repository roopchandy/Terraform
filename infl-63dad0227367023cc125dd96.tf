resource "aws_s3_bucket" "syngenta-aws-tf-test-2d1" {
  bucket         = "syngenta-aws-tf-test"
  hosted_zone_id = "Z3AQBSTGFYJSTF"
}




resource "aws_s3_bucket_versioning" "syngenta-aws-tf-test-35c" {
  bucket = "${aws_s3_bucket.syngenta-aws-tf-test-2d1.id}"
  versioning_configuration {
    status = "Enabled"
  }
}




resource "aws_s3_bucket_public_access_block" "syngenta-aws-tf-test-584" {
  block_public_acls       = true
  block_public_policy     = true
  bucket                  = "${aws_s3_bucket.syngenta-aws-tf-test-2d1.id}"
  ignore_public_acls      = true
  restrict_public_buckets = true
}




resource "aws_s3_bucket_server_side_encryption_configuration" "syngenta-aws-tf-test-ede" {
  bucket = "${aws_s3_bucket.syngenta-aws-tf-test-2d1.id}"
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = true
  }
}




resource "aws_s3_bucket_acl" "syngenta-aws-tf-test-337" {
  access_control_policy {
    grant {
      grantee {
        id   = "fe02b3876804d93ef80a6e6d1bcc5039eb547d4c46467f7ac72f082127696a50"
        type = "CanonicalUser"
      }
      permission = "FULL_CONTROL"
    }
    owner {
      display_name = "aws-use1.cloud-compute-sb"
      id           = "fe02b3876804d93ef80a6e6d1bcc5039eb547d4c46467f7ac72f082127696a50"
    }
  }
  bucket = "${aws_s3_bucket.syngenta-aws-tf-test-2d1.id}"
}

