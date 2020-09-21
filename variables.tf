
variable "client" {
  type = string
}

variable "credentials" {
  type = string
  default = "key.json"
}

variable "region" {
    type = string

}
variable "enable_apis" {
  description = "Whether to actually enable the APIs. If false, this module is a no-op."
  default     = "true"
}

variable "activate_apis_service" {
  description = "The list of apis to activate within the project"
  type        = list(string)
  default     = []
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

#----------------------------------------------------------------------------------------------------------------------


variable "subnet1_range" {
  description = ""
}


#--------------------------------------------------------------------------------------------------------------------------

variable "service_ac_id" {
    type = string
    description = "Service Account Id."
}

variable "service_ac_name" {
    type = string
    description = "Display name of service account"
}

#--------------------------------------------------------------------------------------------------------------------------------------------------

variable "instance_name" {
  description = "Name of compute instance."

}
variable "vm_tags" {
  description = "Network tags"

}
variable "machine_type" {
  description = "the machine type to create."

}

variable "image" {
  description = "The image from which to initialize this disk."
}


variable "zone" {
  description = "Zone where instance is deployed."
}



variable "boot_disk_type" {
  description = "Disk type of the boot disk to create."
}


variable "boot_disk_size" {
  description = "Size of the persistent boot disk, specified in GB."

}


# variable "org_id" {
#   type = string
#   description = "(optional) describe your variable"
# }

# variable "billing_account" {
#   type = string
#   description = "(optional) describe your variable"
# }
# variable "folder_id" {
#   type = string
#   description = "(optional) describe your variable"
# }