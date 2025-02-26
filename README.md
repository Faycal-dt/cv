## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.cv_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_policy.public_read_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.cv_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_object.cv_pdf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_acl"></a> [bucket\_acl](#input\_bucket\_acl) | Bucket access | `string` | `"public-read"` | no |
| <a name="input_bucket_content_type"></a> [bucket\_content\_type](#input\_bucket\_content\_type) | Bucket content type | `string` | `"application/pdf"` | no |
| <a name="input_bucket_key"></a> [bucket\_key](#input\_bucket\_key) | Bucket Key | `string` | n/a | yes |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Bucket Name | `string` | `"cvdevops-nassim-2023"` | no |
| <a name="input_bucket_source"></a> [bucket\_source](#input\_bucket\_source) | Input Path | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cv_url"></a> [cv\_url](#output\_cv\_url) | n/a |
