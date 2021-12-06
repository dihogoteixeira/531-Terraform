variable "name" {
  type        = string
  description = "Nome do grupo"
}

variable "base_instance_name" {
  type = string
  description = "Prefixo das instancias por exeplo: app"
}

variable "region" {
  type = string
  description = "Região"
}

variable "distribution_policy_zones" {
  type = list(string)
  description = "Zonas do grupo de instancias"
}

variable "instance_template" {
  type = any
  description = "Depends_on do modulo"
  default = null
}