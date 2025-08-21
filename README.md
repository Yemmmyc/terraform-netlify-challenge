Terraform Netlify Project

This Terraform project tracks an existing Netlify site and outputs its Site ID and URL. It uses Netlify provider v0.2.3 and does not manage environment variables.

Table of Contents
1. Project Overview
2. Prerequisites
3. Project Structure
4. Setup Instructions
5. Terraform Commands
6. Outputs
7. Notes
8. Closing Remarks

Project Overview
This project demonstrates how to track an existing Netlify site in Terraform, store site details in Terraform state, and output site_id and site_url. This setup does not modify the site or create environment variables.

Prerequisites
- Terraform >= 1.5.0
- Netlify personal access token
- Existing Netlify site with Site ID

Project Structure
terraform-netlify-challenge/
- main.tf                  # Terraform configuration (provider setup)
- variables.tf             # Variable definitions
- outputs.tf               # Outputs for site ID and URL
- terraform.tfvars         # Example variable file
- .gitignore               # Ignore state files and sensitive data

Setup Instructions
1. Clone the repository:
git clone https://github.com/Yemmmyc/terraform-netlify-challenge.git
cd terraform-netlify-challenge

2. Copy terraform.tfvars.example to terraform.tfvars:
cp terraform.tfvars.example terraform.tfvars

3. Update terraform.tfvars if needed by adding your Netlify personal access token. Note: For this minimal setup, terraform.tfvars is optional since defaults for site ID and URL are provided.

Terraform Commands
1. Initialize Terraform:
terraform init

2. Plan changes:
terraform plan

3. Apply changes:
terraform apply

Outputs
After terraform apply, the following outputs will be displayed:
site_id  = "fa32c99d-ab5e-4347-bbae-faa387535e08"
site_url = "https://yemisi-netlify-site.netlify.app/"

- site_id → The Netlify API ID of your site
- site_url → The live URL of your Netlify site

Notes
- Terraform cannot create or modify the site using provider v0.2.3
- This setup is read-only, except for environment variable management if added later
- No environment variables are required for this minimal setup

Closing Remarks
This project demonstrates a minimal, reliable way to track an existing Netlify site using Terraform. It provides a foundation for managing additional site resources, such as environment variables or custom domains, in a controlled and reproducible way.

Terraform makes it easy to keep infrastructure as code, ensuring that changes are transparent, version-controlled, and safe to apply.

Feel free to extend this project to explore more advanced Netlify management with Terraform.

