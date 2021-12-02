resource "google_compute_instance" "this" {
  count        = var.amount
  
  name         = format("%s-%d", var.vm_name, count.index)
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.vm_image
    }
  }

  network_interface {
    network    = var.network
    access_config {
      
    }
  }

  metadata_startup_script = "./scripts/us.sh"
}
