resource "google_compute_region_instance_group_manager" "this" {
  name = var.name

  base_instance_name = var.base_instance_name
  region = var.region
  distribution_policy_zones = var.distribution_policy_zones

  version {
    instance_template = var.instance_template
  }

  target_size = length(var.distribution_policy_zones)

  depends_on = [
    var.resource_depends_on
  ]
}