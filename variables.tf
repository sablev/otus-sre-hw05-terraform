variable "namespace" {
  description = "Наименование пространства имён"
  type        = string
}

variable "role" {
  description = "Наименование роли"
  type        = string
}

variable "account" {
  description = "Наименование учётной записи"
  type        = string
}

variable "pod_cpu_limit_max" {
  description = "Лимит PCU для pod"
  type        = string
}

variable "pod_memory_limit_max" {
  description = "Лимит памяти для pod"
  type        = string
}

variable "container_cpu_limit_max" {
  description = "Лимит PCU для контейнера"
  type        = string
}

variable "container_memory_limit_max" {
  description = "Лимит памяти для контейнера"
  type        = string
}

variable "pvc_storage_limit_max" {
  description = "Лимит диска для PVC"
  type        = string
}