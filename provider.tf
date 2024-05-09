terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.12.19"  
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
