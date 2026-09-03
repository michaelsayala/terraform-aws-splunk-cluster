output "cluster_manager_public_ip" {
  value = var.enable_cluster_manager ? aws_instance.cluster_manager[0].public_ip : null
}

output "cluster_manager_private_ip" {
  value = var.enable_cluster_manager ? aws_instance.cluster_manager[0].private_ip : null
}

output "deployer_public_ip" {
  value = var.enable_deployer ? aws_instance.deployer[0].public_ip : null
}

output "deployer_private_ip" {
  value = var.enable_deployer ? aws_instance.deployer[0].private_ip : null
}

output "license_manager_public_ip" {
  value = var.enable_license_manager ? aws_instance.license_manager[0].public_ip : null
}

output "license_manager_private_ip" {
  value = var.enable_license_manager ? aws_instance.license_manager[0].private_ip : null
}

output "deployment_server_public_ip" {
  value = var.enable_deployment_server ? aws_instance.deployment_server[0].public_ip : null
}

output "deployment_server_private_ip" {
  value = var.enable_deployment_server ? aws_instance.deployment_server[0].private_ip : null
}

output "indexer_public_ips" {
  value = {
    for name, instance in aws_instance.indexers :
    name => instance.public_ip
  }
}

output "indexer_private_ips" {
  value = {
    for name, instance in aws_instance.indexers :
    name => instance.private_ip
  }
}

output "search_head_public_ips" {
  value = {
    for name, instance in aws_instance.search_heads :
    name => instance.public_ip
  }
}

output "search_head_private_ips" {
  value = {
    for name, instance in aws_instance.search_heads :
    name => instance.private_ip
  }
}

output "heavy_forwarder_public_ips" {
  value = {
    for name, instance in aws_instance.heavy_forwarders :
    name => instance.public_ip
  }
}

output "heavy_forwarder_private_ips" {
  value = {
    for name, instance in aws_instance.heavy_forwarders :
    name => instance.private_ip
  }
}

output "universal_forwarder_public_ips" {
  value = {
    for name, instance in aws_instance.universal_forwarders :
    name => instance.public_ip
  }
}

output "universal_forwarder_private_ips" {
  value = {
    for name, instance in aws_instance.universal_forwarders :
    name => instance.private_ip
  }
}