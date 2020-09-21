variable "client" {
  type = string
}

variable "network_name" {
  type = string
}

variable "project_id" {
  type = string
}

variable "auto_create_subnetworks" {
  type = bool
}

variable "routing_mode" {
  default = "REGIONAL"
}


