terraform {
  required_version = ">= 1.7.0"

  cloud {
    organization = "hiroxto"
    workspaces {
      name = "utils-hiroxto-net-iac"
    }
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.26.0"
    }
  }
}
