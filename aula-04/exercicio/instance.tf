resource "google_compute_instance" "vm-one" {
  name         = "vm-one"
  machine_type = var.vm_type
  zone         = var.vm_zone

  boot_disk {
    initialize_params {
      image = var.vm_os
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.tf-foo-sub.self_link

    access_config {
      // Ephemeral IP
    }
  }
}

resource "google_compute_instance" "vm-two" {
  name         = "vm-two"
  machine_type = var.vm_type
  zone         = var.vm_zone
  tags = ["web"]

  boot_disk {
    initialize_params {
      image = var.vm_os
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.tf-foo-sub.self_link

    access_config {
      // Ephemeral IP
    }
  }
}