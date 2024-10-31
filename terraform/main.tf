terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "eu-north-1"
}

module "features" {
  source = "./modules/features"

  features_bucket_name = "ofe-kalabanga-features-config-bucket"
}
