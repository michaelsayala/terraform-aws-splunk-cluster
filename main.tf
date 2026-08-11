#############################################
# Networking
#############################################
module "networking" {

  source = "./modules/networking"

  project_name = var.project_name
  environment  = var.environment
  common_tags = local.common_tags

  vpc_cidr = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone = var.availability_zone

}
#############################################
# Security Groups
#############################################
module "security_groups" {

  source = "./modules/security_groups"

  project_name = var.project_name
  environment  = var.environment
  common_tags = local.common_tags

  vpc_id = module.networking.vpc_id
  vpc_cidr = module.networking.vpc_cidr

  ssh_allowed_cidrs = var.ssh_allowed_cidrs
  splunk_web_allowed_cidrs = var.splunk_web_allowed_cidrs

}
#############################################
# Compute
#############################################
module "compute" {
  source            = "./modules/compute"

  project_name = var.project_name
  environment  = var.environment
  common_tags  = local.common_tags

  ec2_os            = var.ec2_os
  key_pair          = var.key_pair
  splunk_components = var.splunk_components

  subnet_id                 = module.networking.public_subnet_id
  
  cluster_manager_sg_id     = module.security_groups.cluster_manager_sg_id
  indexer_sg_id             = module.security_groups.indexer_sg_id
  deployer_sg_id            = module.security_groups.deployer_sg_id
  search_head_sg_id         = module.security_groups.search_head_sg_id
  license_manager_sg_id     = module.security_groups.license_manager_sg_id
  heavy_forwarder_sg_id     = module.security_groups.heavy_forwarder_sg_id
  deployment_server_sg_id   = module.security_groups.deployment_server_sg_id
  universal_forwarder_sg_id = module.security_groups.universal_forwarder_sg_id
}