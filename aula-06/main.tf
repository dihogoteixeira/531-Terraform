# Instanciando módulos
module "instances" {
  source = "./modules/gcp-instances"
 
  amount = 2
  name   = "linux-vm-1"
}

module "group-web" {
  source = "./modules/gcp-instances"

  amount = 3
  name   = "linux-web"
  image  = "centos-cloud/centos-8"
}

module "group-gitlab" {
  source = "./modules/gcp-instances"

  amount = 2
  name   = "linux-gitlab"
  image  = "centos-cloud/centos-7"
}
