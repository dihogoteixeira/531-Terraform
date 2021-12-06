/*
INSTANCIAMENTO DE MODULO VPC PUBLICO
*/
module "vpc" {
    source = "terraform-google-modules/network/google"
    version = "3.3.0"

    project_id = "aula-02-333023"
    network_name = "ha-project"

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

/*
FIREWALL ROLE DEV
*/
resource "google_compute_firewall" "tf-fw-dev" {
  name = "tf-fw-dev"
  network = module.vpc.network_self_link
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
}

/*
FIREWALL ROLE LOADBALACER
*/
resource "google_compute_firewall" "tf-fw-lb" {
  name = "tf-fw-lb"
  network = module.vpc.network_self_link
  allow {
    protocol = "tcp"
    ports = ["80", "443"]
  }
  source_ranges = ["130.211.0.0/22", "35.191.0.0/16"]
}

/* GET INFO DATASOURCE
PRECISO REGISTRAR O SELF_LINK DAS SUBNETS CORRETAMENTE,
COMO ESTOU USANDO MÓDULOS, PRECISO BUSCAR POR UM DATASOURCE
*/
data "google_compute_subnetwork" "subnet-us" {
  name = "subent-us"
  region = "us-central1"
  depends_on = [
    module.vpc
  ]
}

data "google_compute_subnetwork" "subnet-asia" {
  name = "subnet-asia"
  region = "asia-east1"
  depends_on = [
    module.vpc
  ]
}

/*
INSTNCE TEMPLATES
*/
module "instance-template-us" {
  source = "./mod-gcp-it"
  name = "us"
  metadata_startup_script = "./scripts/us.sh"
  network = module.vpc.network_self_link
  subnetwork = data.google_compute_subnetwork.subnet-us.self_link
}

module "instance-template-asia" {
  source = "./mod-gcp-it"
  name = "asia"
  metadata_startup_script = "./scripts/asia.sh"
  network = module.vpc.network_self_link
  subnetwork = data.google_compute_subnetwork.subnet-asia.self_link
}

/*
INSTANCE GROUPS
*/
module "igm-us" {
  source = "./mod-gcp-igm"
  name = "igm-us"
  base_instance_name = "us-web"
  region = "us-central1"
  instance_template = module.instance-template-us.self_link
  distribution_policy_zones = ["us-central1-a", "us-central1-b"]
  resource_depends_on = [module.vpc]
}

module "igm-asia" {
  source = "./mod-gcp-igm"
  name = "igm-asia"
  base_instance_name = "asia-web"
  region = "asia-east1"
  instance_template = module.instance-template-asia.self_link
  distribution_policy_zones = ["asia-east1-a"]
  resource_depends_on = [module.vpc]
}

/*
LOADBALANCER
*/
module "mod-lb" {
  source = "./mod-gcp-lb"
  backends = [
    module.igm-us.instance_group,
    module.igm-asia.instance_group
  ]
}

output "lb-ip" {
  value = module.mod-lb.ip
}

/*
BASTION
*/
resource "google_compute_instance" "bastion" {
  count = terraform.workspace == "prd" ? 3 : 2
  name = format("%s-%s", "bastion", count.index)
  machine_type = "e2-medium"
  zone = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    subnetwork = data.google_compute_subnetwork.subnet-us.self_link

    access_config {
      // Ephemeral IP
    }
  }
}