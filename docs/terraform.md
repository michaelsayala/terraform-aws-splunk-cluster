## Requirements

No requirements.

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.55.0 |

## Modules

| Name | Source | Version |
| ---- | ------ | ------- |
| <a name="module_compute"></a> [compute](#module\_compute) | ./modules/compute | n/a |
| <a name="module_networking"></a> [networking](#module\_networking) | ./modules/networking | n/a |
| <a name="module_security_groups"></a> [security\_groups](#module\_security\_groups) | ./modules/security_groups | n/a |

## Resources

| Name | Type |
| ---- | ---- |
| [aws_key_pair.splunk_ssh](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | AWS availability zone | `string` | n/a | yes |
| <a name="input_ec2_os"></a> [ec2\_os](#input\_ec2\_os) | AMI ID for EC2 instances | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Deployment environment (dev, test, prod) | `string` | n/a | yes |
| <a name="input_key_pair"></a> [key\_pair](#input\_key\_pair) | AWS EC2 key pair name | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the project | `string` | n/a | yes |
| <a name="input_public_key_path"></a> [public\_key\_path](#input\_public\_key\_path) | Path to SSH public key file | `string` | n/a | yes |
| <a name="input_public_subnet_cidr"></a> [public\_subnet\_cidr](#input\_public\_subnet\_cidr) | CIDR block for public subnet | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS region where resources will be deployed | `string` | n/a | yes |
| <a name="input_splunk_components"></a> [splunk\_components](#input\_splunk\_components) | Configuration for each Splunk component | <pre>map(object({<br/><br/>    instance_type = string<br/><br/>    root_volume = number<br/><br/>    public_ip = optional(bool, false)<br/><br/>  }))</pre> | n/a | yes |
| <a name="input_splunk_web_allowed_cidrs"></a> [splunk\_web\_allowed\_cidrs](#input\_splunk\_web\_allowed\_cidrs) | CIDR blocks allowed for Splunk Web access | `list(string)` | n/a | yes |
| <a name="input_ssh_allowed_cidrs"></a> [ssh\_allowed\_cidrs](#input\_ssh\_allowed\_cidrs) | CIDR blocks allowed for SSH access | `list(string)` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR block for VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_cluster_manager_private_ip"></a> [cluster\_manager\_private\_ip](#output\_cluster\_manager\_private\_ip) | n/a |
| <a name="output_cluster_manager_public_ip"></a> [cluster\_manager\_public\_ip](#output\_cluster\_manager\_public\_ip) | n/a |
| <a name="output_deployer_private_ip"></a> [deployer\_private\_ip](#output\_deployer\_private\_ip) | n/a |
| <a name="output_deployer_public_ip"></a> [deployer\_public\_ip](#output\_deployer\_public\_ip) | n/a |
| <a name="output_deployment_server_private_ip"></a> [deployment\_server\_private\_ip](#output\_deployment\_server\_private\_ip) | n/a |
| <a name="output_deployment_server_public_ip"></a> [deployment\_server\_public\_ip](#output\_deployment\_server\_public\_ip) | n/a |
| <a name="output_heavy_forwarder_private_ip"></a> [heavy\_forwarder\_private\_ip](#output\_heavy\_forwarder\_private\_ip) | n/a |
| <a name="output_heavy_forwarder_public_ip"></a> [heavy\_forwarder\_public\_ip](#output\_heavy\_forwarder\_public\_ip) | n/a |
| <a name="output_indexer_private_ips"></a> [indexer\_private\_ips](#output\_indexer\_private\_ips) | n/a |
| <a name="output_indexer_public_ips"></a> [indexer\_public\_ips](#output\_indexer\_public\_ips) | n/a |
| <a name="output_license_manager_private_ip"></a> [license\_manager\_private\_ip](#output\_license\_manager\_private\_ip) | n/a |
| <a name="output_license_manager_public_ip"></a> [license\_manager\_public\_ip](#output\_license\_manager\_public\_ip) | n/a |
| <a name="output_search_head_private_ips"></a> [search\_head\_private\_ips](#output\_search\_head\_private\_ips) | n/a |
| <a name="output_search_head_public_ips"></a> [search\_head\_public\_ips](#output\_search\_head\_public\_ips) | n/a |
| <a name="output_universal_forwarder_private_ip"></a> [universal\_forwarder\_private\_ip](#output\_universal\_forwarder\_private\_ip) | n/a |
| <a name="output_universal_forwarder_public_ip"></a> [universal\_forwarder\_public\_ip](#output\_universal\_forwarder\_public\_ip) | n/a |
