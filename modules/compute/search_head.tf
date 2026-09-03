resource "aws_instance" "search_heads" {
 for_each = var.enable_search_head ? toset(local.search_heads) : toset([])

  ami           = var.ec2_os
  instance_type = var.splunk_components["search_heads"].instance_type

  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.splunk_components["search_heads"].public_ip

  key_name = var.key_pair

  vpc_security_group_ids = [
    var.search_head_sg_id
  ]

  root_block_device {
    volume_size = var.splunk_components["search_heads"].root_volume
    volume_type = "gp3"
    encrypted   = true
  }

  tags = merge(
    var.common_tags,
    {
      Name      = "${local.search_head_ec2_name}-${each.key}"
      Component = "search_head"
    }
  )
}