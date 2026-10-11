variable "integration_oracle_managed_custom_endpoints" {
  description = <<EOT
Map of integration_oracle_managed_custom_endpoints, attributes below
Required:
    - hostname
    - integration_instance_id
Optional:
    - dns_type
    - dns_zone_name
    - managed_type
    - state
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    hostname                = string
    integration_instance_id = string
    dns_type                = optional(string)
    dns_zone_name           = optional(string)
    managed_type            = optional(string)
    state                   = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.integration_oracle_managed_custom_endpoints : (
        v.dns_type == null || (contains([for v in ["OCI"] : lower(v)], lower(v.dns_type)))
      )
    ])
    error_message = "must be one of: \"OCI\""
  }
  validation {
    condition = alltrue([
      for k, v in var.integration_oracle_managed_custom_endpoints : (
        v.managed_type == null || (contains([for v in ["ORACLE_MANAGED", "CUSTOMER_MANAGED"] : lower(v)], lower(v.managed_type)))
      )
    ])
    error_message = "must be one of: \"ORACLE_MANAGED\", \"CUSTOMER_MANAGED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.integration_oracle_managed_custom_endpoints : (
        v.state == null || (contains([for v in ["ACTIVE", "INACTIVE"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"ACTIVE\", \"INACTIVE\""
  }
}

