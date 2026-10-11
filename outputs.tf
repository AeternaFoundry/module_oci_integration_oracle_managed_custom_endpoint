output "integration_oracle_managed_custom_endpoints_id" {
  description = "Map of id values across all integration_oracle_managed_custom_endpoints, keyed the same as var.integration_oracle_managed_custom_endpoints except keys with no id are omitted"
  value       = { for k, v in oci_integration_oracle_managed_custom_endpoint.integration_oracle_managed_custom_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "integration_oracle_managed_custom_endpoints_dns_type" {
  description = "Map of dns_type values across all integration_oracle_managed_custom_endpoints, keyed the same as var.integration_oracle_managed_custom_endpoints except keys with no dns_type are omitted"
  value       = { for k, v in oci_integration_oracle_managed_custom_endpoint.integration_oracle_managed_custom_endpoints : k => v.dns_type if v.dns_type != null && length(v.dns_type) > 0 }
}
output "integration_oracle_managed_custom_endpoints_dns_zone_name" {
  description = "Map of dns_zone_name values across all integration_oracle_managed_custom_endpoints, keyed the same as var.integration_oracle_managed_custom_endpoints except keys with no dns_zone_name are omitted"
  value       = { for k, v in oci_integration_oracle_managed_custom_endpoint.integration_oracle_managed_custom_endpoints : k => v.dns_zone_name if v.dns_zone_name != null && length(v.dns_zone_name) > 0 }
}
output "integration_oracle_managed_custom_endpoints_hostname" {
  description = "Map of hostname values across all integration_oracle_managed_custom_endpoints, keyed the same as var.integration_oracle_managed_custom_endpoints except keys with no hostname are omitted"
  value       = { for k, v in oci_integration_oracle_managed_custom_endpoint.integration_oracle_managed_custom_endpoints : k => v.hostname if v.hostname != null && length(v.hostname) > 0 }
}
output "integration_oracle_managed_custom_endpoints_integration_instance_id" {
  description = "Map of integration_instance_id values across all integration_oracle_managed_custom_endpoints, keyed the same as var.integration_oracle_managed_custom_endpoints except keys with no integration_instance_id are omitted"
  value       = { for k, v in oci_integration_oracle_managed_custom_endpoint.integration_oracle_managed_custom_endpoints : k => v.integration_instance_id if v.integration_instance_id != null && length(v.integration_instance_id) > 0 }
}
output "integration_oracle_managed_custom_endpoints_managed_type" {
  description = "Map of managed_type values across all integration_oracle_managed_custom_endpoints, keyed the same as var.integration_oracle_managed_custom_endpoints except keys with no managed_type are omitted"
  value       = { for k, v in oci_integration_oracle_managed_custom_endpoint.integration_oracle_managed_custom_endpoints : k => v.managed_type if v.managed_type != null && length(v.managed_type) > 0 }
}
output "integration_oracle_managed_custom_endpoints_state" {
  description = "Map of state values across all integration_oracle_managed_custom_endpoints, keyed the same as var.integration_oracle_managed_custom_endpoints except keys with no state are omitted"
  value       = { for k, v in oci_integration_oracle_managed_custom_endpoint.integration_oracle_managed_custom_endpoints : k => v.state if v.state != null && length(v.state) > 0 }
}

