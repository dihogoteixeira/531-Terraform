resource "google_compute_firewall" "ingress-allow-22" {
    name          = "ingress-allow-22"
    network       = google_compute_network.vpc_network.name
    allow {
        protocol  = "tcp"
        ports     = ["22"]
    }
    source_ranges = ["0.0.0.0/0"]
}