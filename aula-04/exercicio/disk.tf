# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_disk
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_attached_disk#example-usage
# https://cloud.google.com/compute/docs/disks#disk-types

## DISCOS_SSD ##
resource "google_compute_disk" "disco-ssd-one" {
    name  = "vm-one-disk-ssd-one"
    type  = var.disk_type_ssd
    size  = var.disk_size_ssd
    zone  = var.vm_zone
}

resource "google_compute_attached_disk" "anexo-ssd-one" {
    disk     = google_compute_disk.disco-ssd-one.self_link
    instance = google_compute_instance.vm-one.self_link
}

resource "google_compute_disk" "disco-ssd-two" {
    name  = "vm-one-disk-ssd-two"
    type  = var.disk_type_ssd
    size  = var.disk_size_ssd
    zone  = var.vm_zone
}

resource "google_compute_attached_disk" "anexo-ssd-two" {
    disk     = google_compute_disk.disco-ssd-two.self_link
    instance = google_compute_instance.vm-one.self_link
}


## DISCOS_HDD ##
resource "google_compute_disk" "disco-hdd-one" {
    name  = "vm-two-disk-hdd-one"
    type  = var.disk_type_hdd
    size  = var.disk_size_hdd
    zone  = var.vm_zone
}

resource "google_compute_attached_disk" "anexo-hdd-one" {
    disk     = google_compute_disk.disco-hdd-one.self_link
    instance = google_compute_instance.vm-two.self_link
}

resource "google_compute_disk" "disco-hdd-two" {
    name  = "vm-two-disk-hdd-two"
    type  = var.disk_type_hdd
    size  = var.disk_size_hdd
    zone  = var.vm_zone
}

resource "google_compute_attached_disk" "anexo-hdd-two" {
    disk     = google_compute_disk.disco-hdd-two.self_link
    instance = google_compute_instance.vm-two.self_link
}