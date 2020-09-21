variable "client" {
  description = "Name of compute instance."

}

variable "name" {
  description = "Name of compute instance."

}
variable "tags" {
  description = "Network tags"

}
variable "machine_type" {
  description = "the machine type to create."

}

variable "project_id" {
  description = "Id of the project."

}


variable "image" {
  description = "The image from which to initialize this disk."
}

variable "subnetwork" {
  description = "Name of the network to deploy instances to."
}

variable "zone" {
  description = "Zone where instance is deployed."
}


variable "service_acc_email" {
  description = "Name of startup script file."

}

variable "boot_disk_type" {
  description = "Disk type of the boot disk to create."
}


variable "boot_disk_size" {
  description = "Size of the persistent boot disk, specified in GB."

}

