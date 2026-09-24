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

output "workspace_domain" {
  description = "Databricks Workspace DNS name without protocol and base domain"

  value = trimsuffix(
    trimprefix(
      databricks_mws_workspaces.this.workspace_url,
      "https://"
    ),
    ".gcp.databricks.com"
  )
}
