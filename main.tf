terraform {
  required_version = ">= 1.5"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.3"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
  host        = "https://localhost:6443"
}

resource "kubernetes_namespace" "namespace" {
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_limit_range" "limits" {
  metadata {
    name      = var.namespace
    namespace = var.namespace
  }
  spec {
    limit {
      type = "Pod"
      max = {
        cpu    = var.pod_cpu_limit_max
        memory = var.pod_memory_limit_max
      }
    }
    limit {
      type = "Container"
      max = {
        cpu    = var.container_cpu_limit_max
        memory = var.container_memory_limit_max
      }
    }
    limit {
      type = "PersistentVolumeClaim"
      max = {
        storage = var.pvc_storage_limit_max
      }
    }
  }
}

resource "kubernetes_role" "role" {
  metadata {
    name      = var.role
    namespace = var.namespace
  }
  rule {
    api_groups = ["*"]
    resources  = ["*"]
    verbs      = ["*"]
  }
}

resource "kubernetes_service_account" "account" {
  metadata {
    name      = var.account
    namespace = var.namespace
  }
}

resource "kubernetes_role_binding" "role_binding" {
  metadata {
    name      = "${var.namespace}-${var.role}-${var.account}"
    namespace = var.namespace
  }
  role_ref {
    kind      = "Role"
    name      = var.role
    api_group = "rbac.authorization.k8s.io"
  }
  subject {
    kind      = "ServiceAccount"
    name      = var.account
    namespace = var.namespace
  }
}