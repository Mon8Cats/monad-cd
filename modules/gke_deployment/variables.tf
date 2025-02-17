# Input Variables
variable "deployment_name" {
  type        = string
  description = "(Required) Kubernetes Deployment Name"
}

variable "namespace" {
  type        = string
  description = "(Optional) Kubernetes Deployment Name"
  default     = "default"
}

variable "replicas" {
  type        = number 
  description = "(Required) Number of Replicas"
}

variable "app_name_label" {
  type        = string
  description = "(Required) App Name label"
}

variable "container_image" {
  type        = string
  description = "(Required) Container image"
}

variable "container_name" {
  type        = string
  description = "(Required) Container image"
  default = "my-app-container"
}

variable "container_port" {
  type        = number
  description = "(Required) Container port"
  default = 80
}

