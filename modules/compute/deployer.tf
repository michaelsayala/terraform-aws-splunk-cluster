resource "aws_instance" "deployer" {
  count = var.enable_deployer ? 1 : 0
  ami           = var.ec2_os
  instance_type = var.splunk_components["deployer"].instance_type

  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.splunk_components["deployer"].public_ip

  key_name = var.key_pair

  vpc_security_group_ids = [
    var.deployer_sg_id
  ]

  root_block_device {
    volume_size = var.splunk_components["deployer"].root_volume
    volume_type = "gp3"
    encrypted   = true
  }

  tags = merge(
    var.common_tags,
    {
      Name      = "${local.deployer_ec2_name}-dp1"
      Component = "deployer"
    }
  )
}