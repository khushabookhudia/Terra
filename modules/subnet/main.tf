resource "google_compute_subnetwork" "subnet1" {
  name          = "${var.client}-subnet1"
  ip_cidr_range = var.subnet1_range 
  region        = null
  network       = var.network
  secondary_ip_range = []
  project = var.project_id
}
