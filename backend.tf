terraform {
  backend "s3" {
    bucket = "bankapp-s3-bucket"
    key    = "bankapp-s3-bucket/production/terraform.tfstate"
    region = "us-east-1"
  }
}