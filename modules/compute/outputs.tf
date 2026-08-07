output "cluster_manager_public_ip" {
  value = aws_instance.cluster_manager.public_ip
}

output "cluster_manager_private_ip" {
  value = aws_instance.cluster_manager.private_ip
}

output "deployer_public_ip" {
  value = aws_instance.deployer.public_ip
}

output "deployer_private_ip" {
  value = aws_instance.deployer.private_ip
}

output "license_manager_public_ip" {
  value = aws_instance.license_manager.public_ip
}

output "license_manager_private_ip" {
  value = aws_instance.license_manager.private_ip
}

output "deployment_server_public_ip" {
  value = aws_instance.deployment_server.public_ip
}

output "deployment_server_private_ip" {
  value = aws_instance.deployment_server.private_ip
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