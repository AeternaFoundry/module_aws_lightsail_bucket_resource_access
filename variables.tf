variable "lightsail_bucket_resource_accesses" {
  description = <<EOT
Map of lightsail_bucket_resource_accesses, attributes below
Required:
    - bucket_name
    - resource_name
Optional:
    - region
EOT

  type = map(object({
    bucket_name   = string
    resource_name = string
    region        = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.lightsail_bucket_resource_accesses : (
        can(regex("\\w[\\w\\-]*\\w", v.resource_name))
      )
    ])
    error_message = "Invalid resource name. Must match regex: \\w[\\w\\-]*\\w"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

