output "name" {
  value = module.instance.name
}

output "instance_id" {
  value = module.instance.instance_id
}

output "cpu_platform" {
  value = module.instance.cpu_platform
}

output "external_ip" {
    value = module.instance.external_ip
}

output "internal_ip" {
    value = module.instance.internal_ip
}