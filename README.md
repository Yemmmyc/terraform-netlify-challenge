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
- Personal Access Token from Netlify
- Git (optional if deploying locally without VCS)
- Project folder containing:
  - `index.html`
  - `assets/` folder (CSS, JS, images)


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

2. Terraform Variables
netlify_token: Netlify personal access token (required)

site_name: Name for the new Netlify site (default: yemisi-netlify-site)

site_dir: Path to the folder containing index.html + assets/ (default: .)

3. Create terraform.tfvars:

4. Update terraform.tfvars if needed by adding your Netlify personal access token. Note: For this minimal setup, terraform.tfvars is optional since defaults for site ID and URL are provided.
   You can override these in terraform.tfvars or via the command line.

Terraform Commands
1. Initialize Terraform: This will download the required provider plugins.
terraform init

2. Plan changes: Shows what changes Terraform will make to your Netlify site
terraform plan

3. Apply changes: Applies the plan and deploy your static site.
terraform apply

Outputs
After terraform apply, the following outputs will be displayed:
site_id  = "fa32c99d-ab5e-4347-bbae-faa387535e08"
site_url = "https://yemisi-netlify-site.netlify.app/"

- site_id → The Netlify API ID of your site
- site_url → The live URL of your Netlify site

8. Git Ignore
Make sure .gitignore excludes sensitive and local files:

# Terraform state files
*.tfstate
*.tfstate.backup

# Terraform variables
terraform.tfvars

# Terraform folder
.terraform/

Notes
- Terraform cannot create or modify the site using provider v0.2.3
- This setup is read-only, except for environment variable management if added later
- No environment variables are required for this minimal setup
- This project deploys the site locally, not using a VCS workflow.
- All files (index.html, assets/, images/) should be in the root project folder or in subfolders referenced by site_dir.
- The Netlify token is required to authenticate Terraform with Netlify.

Closing Remarks
This project demonstrates a minimal, reliable way to track an existing Netlify site using Terraform. It provides a foundation for managing additional site resources, such as environment variables or custom domains, in a controlled and reproducible way.

Terraform makes it easy to keep infrastructure as code, ensuring that changes are transparent, version-controlled, and safe to apply.

Feel free to extend this project to explore more advanced Netlify management with Terraform.

