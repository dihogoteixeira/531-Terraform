resource "google_compute_network" "vpc_network" {
  name                      = "rede-alfa"
}
resource "google_compute_network" "tf_foo_vpc" { 
    name                    = "tf_foo_vpc"
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "tf_foo_sub" { 
    name                    = "tf-foo-subnet"
    ip_cidr_range           = "10.10.10.0/24" 
    region                  = "us-central1"
    network                 = google_compute_network.tf_foo_vpc.name

    depends_on = [
      google_compute_network.tf_foo_vpc
    ]
}