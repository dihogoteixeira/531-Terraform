variable "amount" {
  description = "Quantidade de máquinas que deseja criar"
  type        = number
  default     = 1
}

variable "vm_name" {
  description = "Nome da instância"
  type        = string
}

variable "machine_type" {
  description = "Tamanho da instância"
  type        = string
  default     = "f1-micro"
}

variable "zone" {
  description = "Em qual zona sua instância irá ficar"
  type        = string
  default     = "us-central1-a"
}

variable "vm_image" {
  description = "Qual Sistema deseja utilizar"
  type        = string
  default     = "debian-cloud/debian-9"
}

variable "network" {
  description = "Qual rede deseja utilizar"
  type        = string
  default     = "default"
}