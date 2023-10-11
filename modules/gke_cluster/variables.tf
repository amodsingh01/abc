variable "project_id" {
  description = "The ID of the GCP project."
}

variable "name" {
  description = "The name of the GKE cluster."
}

variable "region" {
  description = "The region to create the GKE cluster in."
}

variable "node_pools" {
  description = "The node pools to create in the GKE cluster."
}

variable "network" {
  description = "The network to create the GKE cluster in."
}

variable "master_auth" {
  description = "The master authentication configuration for the GKE cluster."
}