# META-ARGUMENTOS (PALAVRAS RESERVADAS)
# source
# version
# providers
# count 
# for_each 
# lifecycle
# depends_on
# locals

variable "disk_name" {
  type = string
  description = "Disco utilizado por web instance"
}

variable "disk_type" {
  type = string
  default = "pd-ssd"
  description = "Disco do tipo ssd"
}

variable "disk_size" {
  type = number
  description = "Tamanho do disco"
}

variable "vm_name" {
  type = string
  description = "Nome que será utilizado pelo recurso"
}

variable "vm_machine_type" {
  type = string
}

variable "vm_zone" {
  type = string
  description = "Zona em que a VM será provisionada"
}