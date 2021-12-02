# Instanciando módulos
module "instance" {
  source = "./gcp-instance"
 
  amount = 3
  vm_name   = "web-app"
  vm_image  = "centos-cloud/centos-8"
}