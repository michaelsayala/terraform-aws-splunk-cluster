output "cluster_manager_sg_id" {
  value = aws_security_group.cluster_manager-sg.id
}

output "indexer_sg_id" {
  value = aws_security_group.indexer_cluster-sg.id
}

output "deployer_sg_id" {
  value = aws_security_group.deployer-sg.id
}

output "search_head_sg_id" {
  value = aws_security_group.search_head_cluster-sg.id
}

output "license_manager_sg_id" {
  value = aws_security_group.license_manager-sg.id
}

output "heavy_forwarder_sg_id" {
  value = aws_security_group.heavy_forwarder-sg.id
}

output "deployment_server_sg_id" {
  value = aws_security_group.deployment_server-sg.id
}

output "universal_forwarder_sg_id" {
  value = aws_security_group.universal_forwarder-sg.id
}