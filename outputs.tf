output "lightsail_bucket_resource_accesses_id" {
  description = "Map of id values across all lightsail_bucket_resource_accesses, keyed the same as var.lightsail_bucket_resource_accesses"
  value       = { for k, v in aws_lightsail_bucket_resource_access.lightsail_bucket_resource_accesses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lightsail_bucket_resource_accesses_bucket_name" {
  description = "Map of bucket_name values across all lightsail_bucket_resource_accesses, keyed the same as var.lightsail_bucket_resource_accesses"
  value       = { for k, v in aws_lightsail_bucket_resource_access.lightsail_bucket_resource_accesses : k => v.bucket_name if v.bucket_name != null && length(v.bucket_name) > 0 }
}
output "lightsail_bucket_resource_accesses_region" {
  description = "Map of region values across all lightsail_bucket_resource_accesses, keyed the same as var.lightsail_bucket_resource_accesses"
  value       = { for k, v in aws_lightsail_bucket_resource_access.lightsail_bucket_resource_accesses : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lightsail_bucket_resource_accesses_resource_name" {
  description = "Map of resource_name values across all lightsail_bucket_resource_accesses, keyed the same as var.lightsail_bucket_resource_accesses"
  value       = { for k, v in aws_lightsail_bucket_resource_access.lightsail_bucket_resource_accesses : k => v.resource_name if v.resource_name != null && length(v.resource_name) > 0 }
}

