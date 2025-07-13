terraform {
  required_providers {
    namecheap = {
      source = "namecheap/namecheap"
      version = "2.2.0"
    }
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta2"
    }
  }
}

provider "namecheap" {
  user_name = var.namecheap_username
  api_user = var.namecheap_api_user
  api_key = var.namecheap_api_key
  client_ip = var.namecheap_client_ip
  use_sandbox = false
}
provider "aws" {
  region = "us-east-1"
}

provider "kubernetes" {
  alias                  = "eks"
  host                   = aws_eks_cluster.eks.endpoint
  cluster_ca_certificate = base64decode(aws_eks_cluster.eks.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.eks.token
}

terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.5.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.20.0"
    }
  }
}