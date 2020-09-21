resource "google_service_account" "service_account" {
  account_id   = var.service_ac_id 
  display_name = var.service_ac_name 
  project = var.project_id
  description = "service account creation test terraform"
}


# Adding Service Account as IAM Member and giving it the role of Editor and Big Query Admin

resource "google_project_iam_binding" "editor" {
  project = var.project_id 
  role    = "roles/editor"
  members  = ["serviceAccount:${google_service_account.service_account.email}",]
}

resource "google_project_iam_binding" "bq-admin" {
  project = var.project_id
  role    = "roles/bigquery.admin"
  members  = ["serviceAccount:${google_service_account.service_account.email}",]
}

resource "google_project_iam_binding" "service-account-user" {
  project = var.project_id
  role    = "roles/iam.serviceAccountUser"
  members  = ["serviceAccount:${google_service_account.service_account.email}",]
}
