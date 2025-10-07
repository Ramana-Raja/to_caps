terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "terraform-state-devops-mumbai-2025-v2"
    key     = "data-processor-v2/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
  }
}
