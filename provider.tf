terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.12.6"  
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
