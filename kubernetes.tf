provider "kubernetes" {}

resource "kubernetes_namespace" "dev" {
  metadata {
    annotations = {
      name = "dev"
    }

    name = "dev"
  }
}


resource "kubernetes_config_map" "test_configmap" {
  metadata {
    name      = "var.name"
    namespace = "dev"
  }

  data = {
    "feature1" = "on"
  }
}
