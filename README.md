# Splunk Enterprise Distributed Deployment on AWS using Terraform

## Overview

This project automates the deployment of a Splunk Enterprise distributed environment on AWS using Terraform.

The goal of this project is to demonstrate Infrastructure as Code (IaC) practices by provisioning a scalable Splunk architecture with reusable Terraform modules, automated resource creation, and AWS best practices.

The deployment includes networking, security groups, EC2 infrastructure, and the required AWS components to support a distributed Splunk Enterprise environment.

---

# Architecture

The Terraform deployment provisions the following AWS infrastructure:

## AWS Infrastructure Components

* VPC
* Public subnet
* Internet Gateway
* Route Tables
* Security Groups
* EC2 Instances
* SSH Key Pair Management
* Resource Tagging

## Splunk Enterprise Components

The distributed Splunk environment includes:

* Cluster Manager
* Indexer Cluster
* Search Head Cluster
* Deployer
* Deployment Server
* License Manager / Distributed Management Console (DMC)
* Heavy Forwarders
* Universal Forwarders

---

# High-Level Architecture
![test](ps://github.com/michaelsayala/terraform-aws-splunk-cluster/blob/main/docs/architecture.png)

---

# Technologies

* Terraform
* Amazon Web Services (AWS)
* Amazon EC2
* Amazon VPC
* Linux
* Splunk Enterprise
* Infrastructure as Code (IaC)

---

# Repository Structure

```
terraform-aws-splunk-cluster/

├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── versions.tf
│
├── modules/
│
│   ├── networking/
│   │   ├── vpc.tf
│   │   ├── subnet.tf
│   │   ├── internet_gateway.tf
│   │   ├── route_table.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── security_groups/
│   │   ├── cluster_manager.tf
│   │   ├── indexer.tf
│   │   ├── search_head.tf
│   │   ├── deployer.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── compute/
│       ├── ec2.tf
│       ├── locals.tf
│       ├── variables.tf
│       └── outputs.tf
│
└── docs/
    └── architecture.png
```

---

# Prerequisites

Before deploying this project, ensure you have:

* AWS Account
* AWS CLI configured
* Terraform installed
* SSH key pair created
* Required AWS permissions to create:

  * VPC
  * Subnets
  * Security Groups
  * EC2 Instances

---

# SSH Key Configuration

This project uses AWS EC2 key pairs for SSH access.

Create your SSH key:

```bash
ssh-keygen -t rsa -b 4096 -f ~/.ssh/splunk-key
```

View your public key:

```bash
cat ~/.ssh/splunk-key.pub
```

Update your Terraform variables:

```hcl
key_pair = "splunk-ssh"

public_key_path = "~/.ssh/splunk-key.pub"
```

Do not commit private keys or sensitive files into GitHub.

---

# Deployment

## 1. Clone Repository

```bash
git clone https://github.com/<username>/terraform-aws-splunk-cluster.git

cd terraform-aws-splunk-cluster
```

---

## 2. Configure Variables

Copy the example variables file:

```bash
cp terraform.tfvars.example terraform.tfvars
```

Update values based on your environment.

Example:

```hcl
project_name = "splunklab"

environment = "dev"

region = "ca-central-1"
```

---

## 3. Initialize Terraform

```bash
terraform init
```

---

## 4. Validate Configuration

```bash
terraform validate
```

Expected output:

```
Success! The configuration is valid.
```

---

## 5. Review Deployment Plan

```bash
terraform plan
```

---

## 6. Deploy Infrastructure

```bash
terraform apply
```

Confirm deployment:

```
yes
```

---

# Destroy Environment

To remove all created AWS resources:

```bash
terraform destroy
```

---

# Terraform Features Demonstrated

This project demonstrates:

* Terraform modules
* Reusable infrastructure components
* Input variables
* Output values
* Local values
* Resource tagging strategy
* AWS networking automation
* Infrastructure dependency management
* EC2 provisioning using Terraform

---

# Security Considerations

* No AWS credentials are stored in this repository
* Terraform state files are excluded from Git
* SSH private keys are excluded
* Sensitive variables are not committed
* Security groups are managed through Terraform

---

# Future Improvements

Planned enhancements:

* Add private subnet architecture
* Add NAT Gateway
* Add Application Load Balancer
* Add Terraform remote backend using S3 and DynamoDB
* Add Terraform CI/CD validation using GitHub Actions
* Integrate with Ansible for Splunk installation and configuration
* Automate Splunk cluster configuration

---

# Author

Michael Ayala

Splunk Engineer | Cloud Automation | Infrastructure as Code

GitHub:
https://github.com/michaelsayala

LinkedIn:
https://www.linkedin.com/in/michaelsayala/
