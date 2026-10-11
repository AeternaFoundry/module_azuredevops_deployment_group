output "deployment_groups_id" {
  description = "Map of id values across all deployment_groups, keyed the same as var.deployment_groups except keys with no id are omitted"
  value       = { for k, v in azuredevops_deployment_group.deployment_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "deployment_groups_description" {
  description = "Map of description values across all deployment_groups, keyed the same as var.deployment_groups except keys with no description are omitted"
  value       = { for k, v in azuredevops_deployment_group.deployment_groups : k => v.description if v.description != null && length(v.description) > 0 }
}
output "deployment_groups_machine_count" {
  description = "Map of machine_count values across all deployment_groups, keyed the same as var.deployment_groups except keys with no machine_count are omitted"
  value       = { for k, v in azuredevops_deployment_group.deployment_groups : k => v.machine_count if v.machine_count != null }
}
output "deployment_groups_name" {
  description = "Map of name values across all deployment_groups, keyed the same as var.deployment_groups except keys with no name are omitted"
  value       = { for k, v in azuredevops_deployment_group.deployment_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "deployment_groups_pool_id" {
  description = "Map of pool_id values across all deployment_groups, keyed the same as var.deployment_groups except keys with no pool_id are omitted"
  value       = { for k, v in azuredevops_deployment_group.deployment_groups : k => v.pool_id if v.pool_id != null }
}
output "deployment_groups_project_id" {
  description = "Map of project_id values across all deployment_groups, keyed the same as var.deployment_groups except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_deployment_group.deployment_groups : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

