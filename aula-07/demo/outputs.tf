output "gateway_ipv4" {
  value = module.network.gateway_ipv4
}

output "self_link" {
  value = module.network.self_link
}

output "creation_timestamp" {
  value = module.subnet-us.creation_timestamp
}

output "gateway_address" {
  value = module.subnet-us.gateway_address
}

output "subnet_us_self_link" {
  value = module.subnet-us.self_link
}