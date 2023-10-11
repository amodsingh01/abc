variable "project_id" {
  description = "The ID of the GCP project."
}

variable "region" {
  description = "The region to create the GKE cluster in."
  default     = "us-central1"
}

variable "cluster_name" {
  description = "The name of the GKE cluster."
}

variable "node_count" {
  description = "The number of nodes in the GKE cluster."
  default     = 3
}

variable "machine_type" {
  description = "The machine type of the nodes in the GKE cluster."
  default     = "n1-standard-1"
}

variable "subnetwork" {
  description = "The subnetwork to create the GKE cluster in."
}