resource "google_compute_network" "tf-foo-vpc" { 
    name                    = var.vpc_name
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "tf-foo-sub" {
    name                    = var.nw_name
    ip_cidr_range           = var.nw_cidr_range
    region                  = var.nw_region
    network                 = google_compute_network.tf-foo-vpc.self_link
}