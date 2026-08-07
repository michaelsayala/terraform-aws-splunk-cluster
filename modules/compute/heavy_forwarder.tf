resource "aws_instance" "heavy_forwarders" {

  for_each = toset(local.heavy_forwarders)

  ami           = var.ec2_os
  instance_type = var.splunk_components["heavy_forwarders"].instance_type

  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.splunk_components["heavy_forwarders"].public_ip

  key_name = var.key_pair

  vpc_security_group_ids = [
    var.heavy_forwarder_sg_id
  ]

  root_block_device {
    volume_size = var.splunk_components["heavy_forwarders"].root_volume
    volume_type = "gp3"
    encrypted   = true
  }


  tags = merge(
    var.common_tags,
    {
      Name      = "${local.heavy_forwarder_ec2_name}-${each.key}"
      Component = "heavy_forwarder"
    }
  )
}