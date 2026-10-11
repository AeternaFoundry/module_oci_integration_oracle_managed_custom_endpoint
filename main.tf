resource "oci_integration_oracle_managed_custom_endpoint" "integration_oracle_managed_custom_endpoints" {
  for_each = var.integration_oracle_managed_custom_endpoints

  hostname                = each.value.hostname
  integration_instance_id = each.value.integration_instance_id
  dns_type                = each.value.dns_type
  dns_zone_name           = each.value.dns_zone_name
  managed_type            = each.value.managed_type
  state                   = each.value.state

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

