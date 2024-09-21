<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kion"></a> [kion](#requirement\_kion) | ~> 0.3.18 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kion"></a> [kion](#provider\_kion) | ~> 0.3.18 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kion_project.this](https://registry.terraform.io/providers/kionsoftware/kion/latest/docs/resources/project) | resource |
| [kion_ou.parent](https://registry.terraform.io/providers/kionsoftware/kion/latest/docs/data-sources/ou) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_pay"></a> [auto\_pay](#input\_auto\_pay) | Whether auto pay is enabled | `bool` | `null` | no |
| <a name="input_budget_amount"></a> [budget\_amount](#input\_budget\_amount) | Budget amount | `number` | `null` | no |
| <a name="input_budget_end_datecode"></a> [budget\_end\_datecode](#input\_budget\_end\_datecode) | End datecode for the budget | `string` | `null` | no |
| <a name="input_budget_start_datecode"></a> [budget\_start\_datecode](#input\_budget\_start\_datecode) | Start datecode for the budget | `string` | `null` | no |
| <a name="input_default_aws_region"></a> [default\_aws\_region](#input\_default\_aws\_region) | Default AWS region | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the project | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | A map of label keys to their corresponding values | `map(string)` | `{}` | no |
| <a name="input_last_updated"></a> [last\_updated](#input\_last\_updated) | Last updated timestamp | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the project | `string` | n/a | yes |
| <a name="input_ou_id"></a> [ou\_id](#input\_ou\_id) | Parent OU ID or name for the OU | `string` | n/a | yes |
| <a name="input_owner_user_group_ids"></a> [owner\_user\_group\_ids](#input\_owner\_user\_group\_ids) | List of owner user group IDs | `list(number)` | <pre>[<br>  1<br>]</pre> | no |
| <a name="input_owner_user_ids"></a> [owner\_user\_ids](#input\_owner\_user\_ids) | ID of the owner user | `list(number)` | <pre>[<br>  1<br>]</pre> | no |
| <a name="input_permission_scheme_id"></a> [permission\_scheme\_id](#input\_permission\_scheme\_id) | Permission scheme ID | `number` | `3` | no |
| <a name="input_project_funding"></a> [project\_funding](#input\_project\_funding) | Project funding details | <pre>list(object({<br>    amount            = number<br>    funding_order     = number<br>    funding_source_id = number<br>    start_datecode    = string<br>    end_datecode      = string<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | The ID of the created project |
<!-- END_TF_DOCS -->