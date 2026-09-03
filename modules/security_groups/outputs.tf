output "cluster_manager_sg_id" {
  value = var.enable_cluster_manager ? aws_security_group.cluster_manager-sg[0].id : null
}

output "indexer_sg_id" {
  value = var.enable_indexer ? aws_security_group.indexer_cluster-sg[0].id : null
}

output "deployer_sg_id" {
  value = var.enable_deployer ? aws_security_group.deployer-sg[0].id : null
}

output "search_head_sg_id" {
  value = var.enable_search_head ? aws_security_group.search_head_cluster-sg[0].id : null
}

output "license_manager_sg_id" {
  value = var.enable_license_manager ? aws_security_group.license_manager-sg[0].id : null
}

output "heavy_forwarder_sg_id" {
  value = var.enable_heavy_forwarder ? aws_security_group.heavy_forwarder-sg[0].id : null
}

output "deployment_server_sg_id" {
  value = var.enable_deployment_server ? aws_security_group.deployment_server-sg[0].id : null
}

output "universal_forwarder_sg_id" {
  value = var.enable_universal_forwarder ? aws_security_group.universal_forwarder-sg[0].id : null
}