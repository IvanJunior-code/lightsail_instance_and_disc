provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = local.management_tags
  }
}