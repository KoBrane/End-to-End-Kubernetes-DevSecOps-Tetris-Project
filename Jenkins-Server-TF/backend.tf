terraform {
  backend "s3" {
    bucket         = "terraform-state-mybucket-007"
    region         = "us-east-1"
    key            = "End-to-End-k8s/Jenkins-Server-TF/terraform.tfstate"
    use_lockfile   = true
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}