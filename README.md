# Google Databricks workspace Terraform module
Terraform module for creation Google Databricks workspace

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements
| Name                                                                      | Version   |
|---------------------------------------------------------------------------|-----------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0  |
| <a name="requirement_databricks"></a> [google](#requirement\_databricks)  | >= 1.19.0 |

## Providers
| Name                                                               | Version |
|--------------------------------------------------------------------|---------|
| <a name="provider_databricks"></a> [google](#provider\_databricks) | 1.19.0  |

## Modules
No modules.

## Resources
| Name                                                                                                                                 | Type     |
|--------------------------------------------------------------------------------------------------------------------------------------|----------|
| [databricks_mws_networks.this](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/mws_networks)     | resource |
| [databricks_mws_workspaces.this](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/mws_workspaces) | resource |


## Inputs
| Name                                                                                                  | Description                                                                                                                                                                | Type     | Default                      | Required |
|-------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|------------------------------|:--------:|
| <a name="input_project_id"></a> [project\_id](#input\_project\_id)                                    | ID of the project in which the resources should be created                                                                                                                 | `string` | n/a                          |   yes    |
| <a name="input_databricks_account_id"></a> [databricks\_account\_id](#input\_databricks\_account\_id) | Account Id that could be found in the top right corner of https://accounts.cloud.databricks.com/                                                                           | `string` | n/a                          |   yes    |
| <a name="input_product_base_name"></a> [product\_base\_name](#input\_product\_base\_name)             | Cloud resources base name (used to create services)                                                                                                                        | `string` | n/a                          |    no    |
| <a name="input_env"></a> [env](#input\_env)                                                           | Variable to mark the environment of the resource (used to create services)                                                                                                 | `string` | n/a                          |   yes    |
| <a name="input_region"></a> [region](#input\_region)                                                  | The location or cloud resources region for the environment                                                                                                                 | `string` | n/a                          |   yes    |
| <a name="input_databricks_vpc"></a> [databricks\_vpc](#input\_databricks\_vpc)                        | The ID of the VPC associated with this network                                                                                                                             | `string` | n/a                          |   yes    |
| <a name="input_databricks_subnet"></a> [databricks\_subnet](#input\_databricks\_subnet)               | The ID of the subnet associated with this network                                                                                                                          | `string` | n/a                          |   yes    |
| <a name="input_gke_connectivity_type"></a> [gke\_connectivity\_type](#input\_gke\_connectivity\_type) | Specifies the network connectivity types for the GKE nodes and the GKE master network. Possible values are: PRIVATE_NODE_PUBLIC_MASTER, PUBLIC_NODE_PUBLIC_MASTER          | `string` | "PRIVATE_NODE_PUBLIC_MASTER" |    no    |
| <a name="input_gke_master_ip_range"></a> [gke\_master\_ip\_range](#input\_gke\_master\_ip\_range)     | The IP range from which to allocate GKE cluster master resources. This field will be ignored if GKE private cluster is not enabled. It must be exactly as big as /28 value | `string` | "10.3.0.0/28"                |    no    |
| <a name="input_custom_workspace_name"></a> [custom\_workspace\_name](#input\_custom\_workspace\_name) | Specifies the name of the Databricks Workspace resource                                                                                                                    | `string` | null                         |    no    |
| <a name="input_custom_network_name"></a> [custom\_network\_name](#input\_custom\_network\_name)       | Specifies the name of the Databricks Network configurations                                                                                                                | `string` | null                         |    no    |


## Outputs
| Name                                                                          | Description                     |
|-------------------------------------------------------------------------------|---------------------------------|
| <a name="output_id"></a> [id](#output\_id)                                    | Google Databricks Resource ID   |
| <a name="output_workspace_url"></a> [workspace\_url](#output\_workspace\_url) | Google Databricks Workspace URL |
| <a name="output_workspace_id"></a> [workspace\_id](#output\_workspace\_id)    | Google Databricks Workspace ID  |

<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-databricks-google-workspace/blob/main/LICENSE)
