variable "name" {
  type        = string
  description = "Nome para a subrede"
}

variable "ip_cidr_range" {
  type        = string
  description = "IP CIDR"
}

variable "region" {
  type        = string
  description = "Nome da região que será utilizada"
  default     = "us-central1"
}

variable "network" {
  type        = string
  description = "Nome da rede que será conectada com esta subrede"
}