provider "google" {
  project = var.project_id
  region  = var.region
}

module "gke_cluster" {
  source = "./modules/gke_cluster"

  cluster_name = var.cluster_name
  node_count   = var.node_count
  machine_type = var.machine_type
  subnetwork   = var.subnetwork
}

output "cluster_endpoint" {
  value = module.gke_cluster.endpoint
}

output "cluster_ca_certificate" {
  value = module.gke_cluster.ca_certificate
}
provider "google" {
  project = var.project_id
  region  = var.region
}

module "gke_cluster" {
  source = "./modules/gke_cluster"

  cluster_name = var.cluster_name
  node_count   = var.node_count
  machine_type = var.machine_type
  subnetwork   = var.subnetwork
  zone         = var.zone
}

output "cluster_endpoint" {
  value = module.gke_cluster.cluster_endpoint
}

output "cluster_ca_certificate" {
  value = module.gke_cluster.cluster_ca_certificate
}