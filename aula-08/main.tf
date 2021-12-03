module "master" {
  source = "git@github.com:dihogoteixeira/mod-gcp-instance.git?ref=v1.0"

  name = "tf-master"
  image = "ubuntu-os-cloud/ubuntu-1804-lts"
  machine_type = "e2-medium"
  metadata_startup_script = "./scripts/install_master.sh"

  ssh_keys = [
      {
          publickey = "ssh-rsa yourkeyabc username@PC"
          user      = "mosulco"
      },
      {
          publickey = "ssh-rsa yourkeyabc username@PC"
          user      = "bob"
      } 
  ]
}

module "worker" {
  source = "git@github.com:dihogoteixeira/mod-gcp-instance.git?ref=v1.0"

  name = "tf-worker"
  amount = 2
  image = "ubuntu-os-cloud/ubuntu-1804-lts"
  machine_type = "e2-medium"
  metadata_startup_script = "./scripts/install_worker.sh"
  ssh_keys = [
      {
          publickey = "ssh-rsa yourkeyabc username@PC"
          user      = "molusco"
      },
      {
          publickey = "ssh-rsa yourkeyabc username@PC"
          user      = "bob"
      }
  ]
}