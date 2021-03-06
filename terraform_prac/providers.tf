provider "aws" {
  region = var.region_val
}

terraform {
  backend "s3" {
    bucket = "terraform-backend-cks"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
