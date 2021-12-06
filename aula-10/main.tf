

module "vpc" {
    source = "terraform-google-modules/network/google"
    version = "3.3.0"

    project_id = "aula-02-333023"
    network_name = "ha-project"

    subnets = [
        {
            subnet_name   = "subnet-us"
            subnet_ip     = "10.10.10.0/24"
            subnet_region = "us-central1"
        },
        {
            subnet_name   = "subnet-asia"
            subnet_ip     = "10.10.20.0/24"
            subnet_region = "asia-east1"
        }
    ]
}

resource "google_compute_firewall" "tf-fw-dev" {
  name = "tf-fw-dev"
  network = module.vpc.network_self_link
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
}