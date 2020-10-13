variable "client" {
    type = string
    description = "Name of the client"
}
variable "name" {
    type = string
    description = "name of the project."
}
variable "org_id" {
    type = string
    description = "Organisation Id"
}

variable "billing_account" {
    type = string
    description = "Billing account Id with which the project will be attached to."
}

#variable "folder_id" {
#    type = string
#    description = "Folder Id under which project needs to be created."
#}