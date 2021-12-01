# Instanciando módulos
module "instance" {
  source = "./gcp-instance"
 
  amount = 3
  name   = "web-app"
  image  = "centos-cloud/centos-8"
}