module "gke_cluster" {
  source = "terraform-google-modules/kubernetes-engine/google"

  project_id = var.project_id
  name       = var.cluster_name
  region     = var.region

  node_pools = [
    {
      name            = "default-pool"
      machine_type    = var.machine_type
      initial_node_count = var.node_count
      autoscaling     = {
        min_node_count = var.node_count
        max_node_count = var.node_count + 3
      }
    }
  ]

  network = {
    subnetwork_name = var.subnetwork
  }

  master_auth = {
    username = "admin"
    password = "password"
  }

  depends_on = [
    google_service_networking_connection.private_vpc_connection
  ]
}

output "endpoint" {
  value = module.gke_cluster.endpoint
}

output "ca_certificate" {
  value = module.gke_cluster.ca_certificate
}