output "network_name" {
  value = google_compute_network.vpc_network.name
}

output "self_link" {
  value = google_compute_network.vpc_network.self_link
}