provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "local" {
    path = "/tmp/terraform.tfstate"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}