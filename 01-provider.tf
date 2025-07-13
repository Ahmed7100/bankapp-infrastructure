terraform {
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.20"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.10"
    }
  }
}

# provider "namecheap" {
#   user_name = var.namecheap_username
#   api_user = var.namecheap_api_user
#   api_key = var.namecheap_api_key
#   client_ip = var.namecheap_client_ip
#   use_sandbox = false
#}
provider "aws" {
  region = "us-east-1"
}