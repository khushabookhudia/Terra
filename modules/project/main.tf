resource "random_id" "project_name_suffix" {
  byte_length = 2
}

resource "google_project" "project1" {
  name       = "${var.client}-${var.name}-${random_id.project_name_suffix.hex}"
  project_id = "${var.client}-${var.name}-${random_id.project_name_suffix.hex}"
  org_id     = var.org_id
  folder_id = var.folder_id
  billing_account = var.billing_account
}