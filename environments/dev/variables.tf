# Input Variables
# GCP Project
variable "gcp_project" {
  description = "Project in which GCP Resources to be created"
  type = string
  default = "kdaida123"
}

# GCP Region
variable "gcp_region1" {
  description = "Region in which GCP Resources to be created"
  type = string
  default = "us-east1"
}


# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}

# Business Division
variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type = string
  default = "sap"
}


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

