<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_folder1"></a> [folder1](#module\_folder1) | ./lambda | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | The name of the function | `string` | n/a | yes |
| <a name="input_iam_policy_name"></a> [iam\_policy\_name](#input\_iam\_policy\_name) | The name of the iam policy. | `string` | n/a | yes |
| <a name="input_iam_role_name"></a> [iam\_role\_name](#input\_iam\_role\_name) | The name of the iam role. | `string` | n/a | yes |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | The name of the runtime | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_logging_arn_output"></a> [aws\_logging\_arn\_output](#output\_aws\_logging\_arn\_output) | n/a |
| <a name="output_terraform_aws_role_arn_output"></a> [terraform\_aws\_role\_arn\_output](#output\_terraform\_aws\_role\_arn\_output) | n/a |
| <a name="output_terraform_aws_role_output"></a> [terraform\_aws\_role\_output](#output\_terraform\_aws\_role\_output) | n/a |
<!-- END_TF_DOCS -->