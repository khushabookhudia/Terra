
resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  project                 = var.project_id
  auto_create_subnetworks = var.auto_create_subnetworks
  routing_mode            = var.routing_mode
}
