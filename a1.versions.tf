terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.54.0"
    }
  }

}

# Provider Block
provider "aws" {
  region = var.region
  #profile = "default"
}

  