variable "name" {
  type        = string
  description = "Prefixo do nome do instance template"
}

variable "desc" {
  type = string
  default = ""
  description = "Descrição do tnstance template"
}

variable "machine_type" {
  type        = string
  description = "Tipo de maquina"
  default     = "f1-micro"
}

variable "instance_description" {
  default = ""
  type = string
  description = "(optional) describe your variable"
}

variable "tags" {
  type = list
  description = "Tags da instancia"
  default = []
}

variable "labels" {
  type = map
  description = "Labels da instancia"
  default = {}  
}

variable "can_ip_forward" {
  type = bool
  description = "Roteamento de pacotes"
  default = false
}

variable "network" {
  type        = string
  description = "VPC da instancia"
}

variable "subnetwork" {
  type        = string
  description = "Subnet da instancia"
}

variable "automatic_restart" {
  type = bool
  description = "Automatic restart da instancia"
  default = true
}

variable "on_host_maintenance" {
  type = string
  descriptin = "Host Maintanance da instancia"
  default = "MIGRATE"
}

variable "source_image" {
  type        = string
  description = "Imagem base"
  default     = "debian-cloud/debian-10"
}

variable "auto_delete" {
  type        = bool
  description = "Auto delete da instancia"
  default     = true
}

variable "boot" {
  type        = bool
  description = "Boot disk"
  default     = true
}

variable "metadata_startup_script" {
  type        = string
  description = "Caminho do script shell do userdata"
  default      = null
}

variable "ssh_keys" {
  type = list(object({
    publickey = string
    user = string
  }))
  description = "lista de pub ssh key que precisam ter acesso a VM"
  default = [
      {
        user = "username"
        publickey = "ssh-rsa yourkeyabc username@PC"
      }
  ]
}