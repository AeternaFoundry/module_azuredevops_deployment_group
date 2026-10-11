resource "azuredevops_deployment_group" "deployment_groups" {
  for_each = var.deployment_groups

  name        = each.value.name
  project_id  = each.value.project_id
  description = each.value.description
  pool_id     = each.value.pool_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

