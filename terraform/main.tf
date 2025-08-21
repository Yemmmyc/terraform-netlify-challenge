terraform {
  required_version = ">= 1.5.0"
  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2"
    }
  }
}

provider "netlify" {
  # Authentication handled via environment variables or Netlify CLI login
}

module "site" {
  source = "./modules/netlify_site"
}
