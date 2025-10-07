provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "DevOps-Assignment"
      ManagedBy   = "Terraform"
      Environment = var.environment
      Region      = "ap-south-1"
    }
  }
}
