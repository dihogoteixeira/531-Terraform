# Instanciando módulos
module "instances" {
  source = "./gcp-instances"
 
  amount = 3
  name   = "web-app"
  image  = "centos-cloud/centos-8"
}