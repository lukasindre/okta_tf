terraform {
  required_providers {
    okta = {
      source  = "okta/okta"
      version = "~> 3.10"
    }
  }
}

provider "okta" {}
