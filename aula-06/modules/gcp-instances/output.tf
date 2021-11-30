output "self_link" {
  value = google_compute_instance.this[*].self_link
  description = "Self link"
}

output "ip_externo" {
  value = google_compute_instance.this[*].network_interface.0.access_config.0.nat_ip
  description = "IP externo da VM"
}

output "id" {
  value = google_compute_instance.this[*].id
  description = "ID da VM"
}

output "vm_name" {
  value = google_compute_instance.this[*].name
}