resource "kubernetes_deployment_v1" "myapp1" {
  metadata {
    name      = var.deployment_name
    namespace = var.namespace
    labels = {
      app = var.app_name_label
    }
  } 

  spec {
    replicas = var.replicas
    selector {
      match_labels = {
        app = var.app_name_label
      }
    }
    template {
      metadata {
        labels = {
          app = var.app_name_label
        }
      }
      spec {
        container {
          image = "${var.container_image}:${locals.image_tag}"  # Dynamically set the container image
          name  = var.container_name   # Dynamically set the container name
          port {
            container_port = var.container_port  # Dynamically set the container port
          }
        }
      }
    }
  }
}
