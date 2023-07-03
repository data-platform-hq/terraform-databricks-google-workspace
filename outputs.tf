output "id" {
  value       = databricks_mws_workspaces.this.id
  description = "Azure Databricks Resource ID"
}

output "workspace_url" {
  value       = databricks_mws_workspaces.this.workspace_url
  description = "Azure Databricks Workspace URL"
}

output "workspace_id" {
  value       = databricks_mws_workspaces.this.workspace_id
  description = "Azure Databricks Workspace ID"
}

# output "sku" {
#   value       = var.sku
#   description = "Azure Databricks Workspace SKU type"
# }

# output "access_connector_id" {
#   value       = var.access_connector_enabled ? azurerm_databricks_access_connector.this[0].id : ""
#   description = "Databricks Access Connector's Id"
# }

# output "access_connector_identity" {
#   value       = var.access_connector_enabled ? azurerm_databricks_access_connector.this[0].identity[*] : []
#   description = "Databricks Access Connector's Identities list"
# }
