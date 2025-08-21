output "site_name" {
  description = "The name of the Netlify site"
  value       = netlify_site.yemisi.name
}

output "site_id" {
  description = "The ID of the Netlify site"
  value       = netlify_site.yemisi.id
}

output "live_url" {
  description = "The live URL of the deployed Netlify site"
  value       = netlify_site.yemisi.ssl_url
}
