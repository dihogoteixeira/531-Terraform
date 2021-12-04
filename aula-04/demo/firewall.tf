resource "google_compute_firewall" "ingress-ssh" {
    name          = "allow-ssh"
    network       = google_compute_network.tf-foo-vpc.self_link

    allow {
        protocol  = "tcp"
        ports     = ["22"]
    }
    source_ranges   = ["0.0.0.0/0"]
    target_tags = [ "web" ]
}