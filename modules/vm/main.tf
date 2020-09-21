
resource "google_compute_instance" "instance" {

  name                      = var.name
  machine_type              = var.machine_type
  project                   = var.project_id
  zone                      = var.zone
  allow_stopping_for_update = true
  tags                      = var.tags
  boot_disk {

    initialize_params {
      image = var.image
      size  = var.boot_disk_size
      type  = var.boot_disk_type
    }
  }
  network_interface {
    subnetwork = var.subnetwork

    access_config {
    }
  }

  # metadata_startup_script = var.metadata_startup_script


  service_account {
    email = var.service_acc_email
    scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
      "https://www.googleapis.com/auth/compute.readonly",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/userinfo.email",
    ]
  }
}