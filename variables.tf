#############################################
# Project Configuration
#############################################

variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "environment" {
  description = "Deployment environment (dev, test, prod)"
  type        = string
}


#############################################
# AWS Configuration
#############################################

variable "region" {
  description = "AWS region where resources will be deployed"
  type        = string
}

variable "ec2_os" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "key_pair" {
  description = "AWS EC2 key pair name"
  type        = string
}

variable "public_key_path" {
  description = "Path to SSH public key file"
  type        = string
}


#############################################
# Networking
#############################################

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
}

variable "availability_zone" {
  description = "AWS availability zone"
  type        = string
}


#############################################
# Security
#############################################

variable "ssh_allowed_cidrs" {
  description = "CIDR blocks allowed for SSH access"
  type        = list(string)
}

variable "splunk_web_allowed_cidrs" {
  description = "CIDR blocks allowed for Splunk Web access"
  type        = list(string)
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

#############################################
# Splunk Component Deployment Controls
#############################################

variable "enable_cluster_manager" {
  type    = bool
  default = false
}

variable "enable_deployer" {
  type    = bool
  default = false
}

variable "enable_deployment_server" {
  type    = bool
  default = false
}

variable "enable_heavy_forwarder" {
  type    = bool
  default = false
}

variable "enable_indexer" {
  type    = bool
  default = false
}

variable "enable_license_manager" {
  type    = bool
  default = false
}

variable "enable_search_head" {
  type    = bool
  default = false
}

variable "enable_universal_forwarder" {
  type    = bool
  default = false
}