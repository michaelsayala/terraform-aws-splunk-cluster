resource "aws_instance" "deployment_server" {
  count = var.enable_deployment_server ? 1 : 0
  ami           = var.ec2_os
  instance_type = var.splunk_components["deployment_server"].instance_type

  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.splunk_components["deployment_server"].public_ip

  key_name = var.key_pair

  vpc_security_group_ids = [
    var.deployment_server_sg_id
  ]

  root_block_device {
    volume_size = var.splunk_components["deployment_server"].root_volume
    volume_type = "gp3"
    encrypted   = true
  }

  tags = merge(
    var.common_tags,
    {
      Name      = "${local.deployment_server_ec2_name}-ds1"
      Component = "deployment_server"
    }
  )
}