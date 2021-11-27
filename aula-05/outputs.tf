output "ip_externo" {
  value = google_compute_instance.web[*].network_interface.0.access_config.0.nat_ip
  description = "IP externo da VM"
}

output "id" {
  value = google_compute_instance.web[*].id
  description = "ID da VM"
}

output "vm_name" {
  value = google_compute_instance.web[*].name
}