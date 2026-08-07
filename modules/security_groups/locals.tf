locals {
  cluster_manager_sg_name     = "${var.project_name}-${var.environment}-cluster_manager-sg"
  deployer_sg_name            = "${var.project_name}-${var.environment}-deployer-sg"
  indexer_cluster_sg_name     = "${var.project_name}-${var.environment}-indexer_cluster-sg"
  search_head_cluster_sg_name = "${var.project_name}-${var.environment}-search_head_cluster-sg"
  license_manager_sg_name     = "${var.project_name}-${var.environment}-license_manager-sg"
  heavy_forwarder_sg_name     = "${var.project_name}-${var.environment}-heavy_forwarder-sg"
  deployment_server_sg_name   = "${var.project_name}-${var.environment}-deployment_server-sg"
  universal_forwarder_sg_name = "${var.project_name}-${var.environment}-universal_forwarder-sg"
}