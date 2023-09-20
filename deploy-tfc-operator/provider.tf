terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.48.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.23.0"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.11.0"
    }

  }
}

provider "tfe" {
  # Configuration options
}

provider "kubernetes" {

}

provider "helm" {
  # Configuration options
}