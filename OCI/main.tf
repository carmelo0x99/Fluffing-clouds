terraform {
  required_version = ">= 1.1.9"

  backend "local" {
    path = "terraform.tfstate"
  }

  required_providers {
    oci = {
      source  = "hashicorp/oci"
      version = "~> 4.75.0"
    }
  }
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  private_key_path = var.private_key_path
  fingerprint      = var.fingerprint
  region           = var.region
}

