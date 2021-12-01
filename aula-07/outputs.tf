output "name" {
  value = module.instances.name
}

output "instance_id" {
  value = module.instances.instance_id
}

output "cpu_platform" {
  value = module.instances.cpu_platform
}

output "external_ip" {
    value = module.instances.external_ip
}

output "internal_ip" {
    value = module.instances.internal_ip
}