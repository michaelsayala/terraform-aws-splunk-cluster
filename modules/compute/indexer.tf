resource "aws_instance" "indexers" {
  for_each = var.enable_indexer ? toset(local.indexers) : toset([])

  ami           = var.ec2_os
  instance_type = var.splunk_components["indexers"].instance_type

  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.splunk_components["indexers"].public_ip

  key_name = var.key_pair

  vpc_security_group_ids = [
    var.indexer_sg_id
  ]

  root_block_device {
    volume_size = var.splunk_components["indexers"].root_volume
    volume_type = "gp3"
    encrypted   = true
  }


  tags = merge(
    var.common_tags,
    {
      Name      = "${local.indexer_ec2_name}-${each.key}"
      Component = "indexer"
    }
  )
}