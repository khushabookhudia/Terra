resource "google_compute_firewall" "ssh" {
  name    = "${var.client}-allow-ssh"
  network = var.network
  project = var.project_id

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]

  source_tags = []
}