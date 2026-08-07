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
# Tags
#############################################

variable "common_tags" {

  description = "Common tags applied to all security groups"

  type = map(string)

  default = {}

}

#############################################
# VPC Configuration
#############################################

variable "vpc_cidr" {

  description = "CIDR block for the VPC"

  type = string

}


#############################################
# Subnet Configuration
#############################################

variable "public_subnet_cidr" {

  description = "CIDR block for the public subnet"

  type = string

}

variable "availability_zone" {

  description = "Availability zone for subnet deployment"

  type = string

}