# Netlify site module
resource "netlify_site" "example" {
  name = "hcp-terraform-demo"
  custom_domain = "example-site.netlify.app"
}
