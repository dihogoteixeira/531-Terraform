module "network" {
  source                  = "git@github.com:dihogoteixeira/mod-gcp-network.git?ref=v1.1"

  name                    = "tf-network-demo"
  description             = "Teste local de modulo inicial"
  project                 = "aula-02-333023"
  auto_create_subnetworks = false
}

module "subnet-us" {
  source                  = "git@github.com:dihogoteixeira/mod-gcp-subnetwork.git?ref=v1.1"

  nw_name                 = "tf-subnet-us"
  nw_cidr_range           = "10.10.0.0/16"
  nw_region               = "us-central1"
  vpc_name                = module.network.self_link

  depends_on = [
    module.network
  ]
}