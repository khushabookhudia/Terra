# org_id = ""
# folder_id = ""
# billing_account_id = ""

enable_apis = "true"
activate_apis_service = [
  "compute.googleapis.com",
  "admin.googleapis.com",
  "iam.googleapis.com",
  "sqladmin.googleapis.com",
  "container.googleapis.com",
  "serviceusage.googleapis.com",
  "servicenetworking.googleapis.com",
  "bigquery.googleapis.com",
  "classroom.googleapis.com",
  "cloudresourcemanager.googleapis.com",
]
#COMMON
client           = "lm"
project_id       = "frost-insights-gc-pilot"
region           = "us-central1"
zone             = "us-central1-a"

#NETWORK

network_name = "main-vpc"
auto_create_subnetworks = false
subnet1_range = "10.154.0.0/16"


#SERVICE ACCOUNT

service_ac_id = "service-ac-234"
service_ac_name = "service-account"

#VM

instance_name = "instance"
vm_tags = ["container-instance"]
machine_type = "n1-standard-1" 
image = "projects/ubuntu-os-cloud/global/images/ubuntu-1604-xenial-v20200429"
boot_disk_type = "pd-standard"
boot_disk_size = 50
