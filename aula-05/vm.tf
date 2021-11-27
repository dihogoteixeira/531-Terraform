data "google_compute_network" "default" {
    name = "default"
}
resource "google_compute_instance" "web" {
  count        = var.vm_count
  name         = format("%s-%s-%s",terraform.workspace, var.vm_name, count.index)
  machine_type = var.vm_type
  zone         = var.vm_zone
  tags         = [ "web" ]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = data.google_compute_network.default.name
    access_config {

    }
  }
}