resource "aws_security_group" "heavy_forwarder-sg" {
  count = var.enable_heavy_forwarder ? 1 : 0
  name        = local.heavy_forwarder_sg_name
  description = "Security group for Splunk Heavy Forwarder"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ssh_allowed_cidrs
  }

  ingress {
    description = "Splunk Web"
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = var.splunk_web_allowed_cidrs
  }

  ingress {
    description = "Splunk Management Port"
    from_port   = 8089
    to_port     = 8089
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  ingress {
    description = "Splunk Indexing Port"
    from_port   = 9997
    to_port     = 9997
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.common_tags,
    {
      Name      = local.heavy_forwarder_sg_name
      Component = "heavy_forwarder"
    }
  )
}