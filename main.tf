provider "google" {
  region      = var.region
  credentials = var.credentials
  version     = "~> 3.19.0"
}
provider "google-beta" {
  region      = var.region
  credentials = var.credentials
  version     = "~> 3.19.0"
}

locals {
  api_set_service = var.enable_apis ? toset(var.activate_apis_service) : []
}

# module "project" {
#   source = "./modules/project"
#   client = var.client
#   name = var.project_id
#   org_id = var.org_id
#   folder_id = var.folder_id
#   billing_account = var.billing_account
# }

resource "google_project_service" "project_api" {
  for_each                   = local.api_set_service
  project                    = var.project_id
  service                    = each.value
  disable_on_destroy         = false
  disable_dependent_services = false
}

module "vpc" {
  source = "./modules/vpc"
  client = var.client
  network_name = "${var.client}-${var.network_name}"
  project_id = var.project_id
  auto_create_subnetworks = var.auto_create_subnetworks

}

module "subnet" {
  source = "./modules/subnet"
  client = var.client
  project_id = var.project_id
  network = module.vpc.network_name
  subnet1_range = var.subnet1_range
  
}

module "firewall" {
  source = "./modules/firewall"
  client = var.client 
  project_id = var.project_id
  network = module.vpc.network_name
}
module "service_ac" {
  source = "./modules/service_account"
  client = var.client
  project_id = var.project_id
  service_ac_id = "${var.client}-${var.service_ac_id}"
  service_ac_name = "${var.client}-${var.service_ac_name}"
  
}

module "vm" {
  source = "./modules/vm"
  client = var.client
  name =  "${var.client}-${var.instance_name}"
  project_id = var.project_id
  machine_type = var.machine_type
  zone = var.zone
  tags = var.vm_tags
  image = var.image
  boot_disk_type = var.boot_disk_type
  boot_disk_size = var.boot_disk_size
  subnetwork = module.subnet.subnet1
  service_acc_email = module.service_ac.service_acc_email
}

