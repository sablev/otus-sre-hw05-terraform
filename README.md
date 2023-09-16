<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.0.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.23.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_limit_range.limits](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/limit_range) | resource |
| [kubernetes_namespace.namespace](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [kubernetes_role.role](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/role) | resource |
| [kubernetes_role_binding.role_binding](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/role_binding) | resource |
| [kubernetes_service_account.account](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account"></a> [account](#input\_account) | Наименование учётной записи | `string` | n/a | yes |
| <a name="input_container_cpu_limit_max"></a> [container\_cpu\_limit\_max](#input\_container\_cpu\_limit\_max) | Лимит PCU для контейнера | `string` | n/a | yes |
| <a name="input_container_memory_limit_max"></a> [container\_memory\_limit\_max](#input\_container\_memory\_limit\_max) | Лимит памяти для контейнера | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Наименование пространства имён | `string` | n/a | yes |
| <a name="input_pod_cpu_limit_max"></a> [pod\_cpu\_limit\_max](#input\_pod\_cpu\_limit\_max) | Лимит PCU для pod | `string` | n/a | yes |
| <a name="input_pod_memory_limit_max"></a> [pod\_memory\_limit\_max](#input\_pod\_memory\_limit\_max) | Лимит памяти для pod | `string` | n/a | yes |
| <a name="input_pvc_storage_limit_max"></a> [pvc\_storage\_limit\_max](#input\_pvc\_storage\_limit\_max) | Лимит диска для PVC | `string` | n/a | yes |
| <a name="input_role"></a> [role](#input\_role) | Наименование роли | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->