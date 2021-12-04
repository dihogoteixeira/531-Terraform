// NETWORK VARIABLES //
variable "vpc_name" {
  type = string
  description = "Nome da VPC"
}

variable "nw_name" {
  type = string
  description = "Nome da VPC"
}

variable "nw_region" {
  type = string
  description = "Regiao da Subnetwork"
}

variable "nw_cidr_range" {
  type = string
  description = "CIDR da Subnetwork"
}
variable "vm_zone" {
  type = string
  description = "Zona da VM"
}

// VM VARIABLES //

variable "vm_type" {
  type = string
  description = "Tipo da VM"
}

variable "vm_os" {
  default = "debian-cloud/debian-10"
  type = string
  description = "SO da VM"
}

// DISK VARIABLES //
variable "disk_type_ssd" {
 type = string
 default = "pd-ssd"
 description = "Tipo do disco SSD"
}

variable "disk_type_hdd" {
 type = string
 default = "pd-standard"
 description = "Tipo do disco HDD"
}

variable "disk_size_ssd" {
 type = number
 description = "Tamanho do disco SSD"
 default = 20
}

variable "disk_size_hdd" {
 type = number
 default = 40
 description = "Tamanho do disco HDD"
}


