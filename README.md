# Google Databricks workspace Terraform module
Terraform module for creation Google Databricks workspace

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements
| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_databricks"></a> [databricks](#requirement\_databricks) | ~> 1.0 |

## Providers
| Name | Version |
| ---- | ------- |
| <a name="provider_databricks"></a> [databricks](#provider\_databricks) | ~> 1.0 |

## Modules
No modules.

## Resources
| Name | Type |
| ---- | ---- |
| [databricks_mws_networks.this](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/mws_networks) | resource |
| [databricks_mws_private_access_settings.this](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/mws_private_access_settings) | resource |
| [databricks_mws_workspaces.this](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/mws_workspaces) | resource |

## Inputs
| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_custom_network_name"></a> [custom\_network\_name](#input\_custom\_network\_name) | Specifies the name of the Databricks Network configurations | `string` | `null` | no |
| <a name="input_custom_workspace_name"></a> [custom\_workspace\_name](#input\_custom\_workspace\_name) | Specifies the name of the Databricks Workspace resource | `string` | `null` | no |
| <a name="input_databricks_account_id"></a> [databricks\_account\_id](#input\_databricks\_account\_id) | Account Id that could be found in the bottom left corner of https://accounts.cloud.databricks.com/ | `string` | n/a | yes |
| <a name="input_databricks_subnet"></a> [databricks\_subnet](#input\_databricks\_subnet) | value | `string` | n/a | yes |
| <a name="input_databricks_vpc"></a> [databricks\_vpc](#input\_databricks\_vpc) | value | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | Variable to mark the environment of the resource (used to create services). | `string` | n/a | yes |
| <a name="input_private_access_settings"></a> [private\_access\_settings](#input\_private\_access\_settings) | Databricks Private Access Settings configuration | <pre>object({<br/>    name                  = string<br/>    public_access_enabled = bool<br/>    private_access_level  = string<br/>  })</pre> | `null` | no |
| <a name="input_product_base_name"></a> [product\_base\_name](#input\_product\_base\_name) | Cloud resources base name (used to create services). | `string` | `"iacda"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | ID of the project in which the resources should be created. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The location or cloud resources region for the environment. | `string` | n/a | yes |
| <a name="input_vpc_endpoint_ids"></a> [vpc\_endpoint\_ids](#input\_vpc\_endpoint\_ids) | Databricks VPC endpoint IDs | `map(string)` | `{}` | no |

## Outputs
| Name | Description |
| ---- | ----------- |
| <a name="output_id"></a> [id](#output\_id) | Databricks Resource ID |
| <a name="output_workspace_domain"></a> [workspace\_domain](#output\_workspace\_domain) | Databricks Workspace DNS name without protocol and base domain |
| <a name="output_workspace_id"></a> [workspace\_id](#output\_workspace\_id) | Databricks Workspace ID |
| <a name="output_workspace_url"></a> [workspace\_url](#output\_workspace\_url) | Databricks Workspace URL |

<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-databricks-google-workspace/blob/main/LICENSE)
