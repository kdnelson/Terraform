terraform {
  required_version = ">= 1.0"

  # Allow AWS provider minor version increase while maintaining major version 4: "~> 4.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}