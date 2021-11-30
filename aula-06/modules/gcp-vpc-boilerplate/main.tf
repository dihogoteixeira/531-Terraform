# Boa parte do codigo que esta aqui e "boilerplate"
# ou seja, codigo pronto disponível na documentacao terraform,
# necessário apenas parametrizar (variables\outputs).
# https://registry.terraform.io/browse/modules

# Rede (VPC + Subnet)  
# https://registry.terraform.io/modules/terraform-google-modules/network/google/latest
module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "3.3.0"

  project_id   = "aula-02-333023"
  network_name = "multi-zone"

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