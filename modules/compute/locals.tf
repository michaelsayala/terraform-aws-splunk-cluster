locals {
  indexer_ec2_name             = "${var.project_name}-${var.environment}-indexer-ec2"
  search_head_ec2_name         = "${var.project_name}-${var.environment}-search_head-ec2"
  deployer_ec2_name            = "${var.project_name}-${var.environment}-deployer-ec2"
  cluster_manager_ec2_name     = "${var.project_name}-${var.environment}-cluster_manager-ec2"
  license_manager_ec2_name     = "${var.project_name}-${var.environment}-license_manager-ec2"
  heavy_forwarder_ec2_name     = "${var.project_name}-${var.environment}-heavy_forwarder-ec2"
  deployment_server_ec2_name   = "${var.project_name}-${var.environment}-deployment_server-ec2"
  universal_forwarder_ec2_name = "${var.project_name}-${var.environment}-universal_forwarder-ec2"

  indexers = [
    "idx1",
    "idx2",
    "idx3"
  ]

  search_heads = [
    "sh1",
    "sh2",
    "sh3"
  ]

  heavy_forwarders = [
    "hf1",
    "hf2"
  ]

  universal_forwarders = [
    "uf1",
    "uf2"
  ]

}