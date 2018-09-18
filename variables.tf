variable "region" {
  description = "gcp region to use"
  default     = "northamerica-northeast1"
}

variable "project" {
  description = "the id of the project in which the resource belongs to"
}

variable "name" {
  description = "name of the gce instance"
}

variable "machine_type" {
  description = "instance type to use"
  default = "n1-standard-1"
}

variable "zone" {
  description = "zone to launch your instance in"
  default = "northamerica-northeast1-a"
}

variable "tags" {
  description = "tags you want for your instance"
  default = []
}

variable "image" {
  description = "image id to use for your instance"
  default = "ubuntu-1604-lts"
}

variable "network" {
  description = "The name or self_link of the network to attach this interface to"
  default = "default"
}

variable "allow_stopping_for_update" {
  description = "allows Terraform to stop the instance to update its properties"
  default = false
}

variable "can_ip_forward" {
  description = "allow sending and receiving of packets with non-matching source or destination IPs"
  default = false
}

variable "create_timeout" {
  description = "timeout in minutes for creating instances"
  default = 0
}

variable "description" {
  description = "instance description"
  default = ""
}

variable "deletion_protection" {
  description = "enable deletion protection on this instance"
  default = false
}

variable "labels" {
  description = " a set of key/value label pairs to assign to the instance"
  default = {}
}

variable "metadata" {
  description = "metadata key/value pairs to make available from within the instance"
  default = {}
}

variable "metadata_startup_script" {
  description = "an alternative to using the startup-script metadata key"
  default = ""
}

variable "scopes" {
  description = "a list of service scopes"
  default = ["cloud-platform"]
}

variable "protocol" {
  description = "the name of the protocols to allow"
  default = "tcp"
}

variable "ports" {
  description = "list of ports and/or port ranges to allow"
  default = ["80", "443", "22"]
}

variable "size" {
  description = "size of the instance in GB"
  default = 10
}
