#############################################
# AWS Configuration
#############################################

variable "ec2_os" {

  description = "AMI ID for Splunk EC2 instances"

  type = string

}


variable "key_pair" {

  description = "EC2 key pair name"

  type = string

}


#############################################
# Networking
#############################################

variable "subnet_id" {

  description = "Subnet ID for EC2 instances"

  type = string

}


#############################################
# Security Groups
#############################################

variable "cluster_manager_sg_id" {

  description = "Security group ID for Cluster Manager"

  type = string

}


variable "indexer_sg_id" {

  description = "Security group ID for Indexers"

  type = string

}


variable "search_head_sg_id" {

  description = "Security group ID for Search Heads"

  type = string

}


variable "deployer_sg_id" {

  description = "Security group ID for Deployer"

  type = string

}


variable "license_manager_sg_id" {

  description = "Security group ID for License Manager"

  type = string

}


variable "heavy_forwarder_sg_id" {

  description = "Security group ID for Heavy Forwarders"

  type = string

}


variable "deployment_server_sg_id" {

  description = "Security group ID for Deployment Server"

  type = string

}


variable "universal_forwarder_sg_id" {

  description = "Security group ID for Universal Forwarders"

  type = string

}


#############################################
# Project Metadata
#############################################

variable "project_name" {

  description = "Project name"

  type = string

}


variable "environment" {

  description = "Deployment environment"

  type = string

}


variable "common_tags" {

  description = "Common resource tags"

  type = map(string)

  default = {}

}


#############################################
# Splunk Components
#############################################

variable "splunk_components" {

  description = "Configuration for each Splunk component"

  type = map(object({

    instance_type = string

    root_volume = number

    public_ip = optional(bool, false)

  }))

}