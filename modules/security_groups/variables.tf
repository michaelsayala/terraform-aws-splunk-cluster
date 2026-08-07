#############################################
# Networking
#############################################

variable "vpc_id" {

  description = "VPC ID where security groups will be created"

  type = string

}


variable "vpc_cidr" {

  description = "VPC CIDR block used for internal Splunk communication"

  type = string

}


#############################################
# Project Metadata
#############################################

variable "project_name" {

  description = "Project name used for resource naming"

  type = string

}


variable "environment" {

  description = "Environment name (dev, test, prod)"

  type = string

}


#############################################
# Security Rules
#############################################

variable "ssh_allowed_cidrs" {

  description = "CIDR blocks allowed to access SSH port 22"

  type = list(string)

}


variable "splunk_web_allowed_cidrs" {

  description = "CIDR blocks allowed to access Splunk Web port 8000"

  type = list(string)

}


#############################################
# Tags
#############################################

variable "common_tags" {

  description = "Common tags applied to all security groups"

  type = map(string)

  default = {}

}