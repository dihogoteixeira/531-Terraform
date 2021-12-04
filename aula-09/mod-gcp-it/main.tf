resource "google_compute_instance_template" "this" {
  name_prefix = var.name
  description = var.desc
  tags        = var.tags

  labels      = {
    environment = terraform.workspace
  }

  instance_description  = var.instance_description
  machine_type          = var.machine_type
  can_ip_forward        = var.can_ip_forward

  scheduling {
    automatic_restart   = var.automatic_restart
    on_host_maintenance = var.on_host_maintenance
  }

  disk {
    source_image = var.source_image
    auto_delete  = var.auto_delete
    boot         = var.boot
  } 

  lifecycle {
    create_before_destroy = true
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    ssh-keys = join("\n", [for key in var.ssh_keys : "${key.user}:${key.publickey}"])
  }
  
  metadata_startup_script = file(var.metadata_startup_script)
}