terraform {
  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2"
    }
  }

  cloud {
    organization = "Yemmmyc"   # HCP Terraform org
    workspaces {
      name = "terraform-netlify-challenge"    # HCP workspace name
    }
  }
}

provider "netlify" {
  token = var.netlify_token
}

resource "netlify_site" "yemisi" {
  name = "yemisi-netlify-site" # unique name
}

resource "netlify_deploy" "deploy" {
  site_id = netlify_site.yemisi.id
  dir     = "${path.module}"   # current folder with index.html + assets
  draft   = false
}

