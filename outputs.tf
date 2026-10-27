output "deployment_groups_id" {
  description = "Map of id values across all deployment_groups, keyed the same as var.deployment_groups"
  value       = { for k, v in azuredevops_deployment_group.deployment_groups : k => v.id }
}
output "deployment_groups_description" {
  description = "Map of description values across all deployment_groups, keyed the same as var.deployment_groups"
  value       = { for k, v in azuredevops_deployment_group.deployment_groups : k => v.description }
}
output "deployment_groups_machine_count" {
  description = "Map of machine_count values across all deployment_groups, keyed the same as var.deployment_groups"
  value       = { for k, v in azuredevops_deployment_group.deployment_groups : k => v.machine_count }
}
output "deployment_groups_name" {
  description = "Map of name values across all deployment_groups, keyed the same as var.deployment_groups"
  value       = { for k, v in azuredevops_deployment_group.deployment_groups : k => v.name }
}
output "deployment_groups_pool_id" {
  description = "Map of pool_id values across all deployment_groups, keyed the same as var.deployment_groups"
  value       = { for k, v in azuredevops_deployment_group.deployment_groups : k => v.pool_id }
}
output "deployment_groups_project_id" {
  description = "Map of project_id values across all deployment_groups, keyed the same as var.deployment_groups"
  value       = { for k, v in azuredevops_deployment_group.deployment_groups : k => v.project_id }
}

