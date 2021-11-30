resource "google_storage_bucket" "state" {
  # Utilizar um nome diferente para o bucket pois ele é unico
  name          = "4linuxstateterraform"
  location      = "US"
  force_destroy = true
  versioning {
    enabled = true
  }
}
