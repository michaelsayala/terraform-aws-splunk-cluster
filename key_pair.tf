resource "aws_key_pair" "splunk_ssh" {
  key_name   = var.key_pair
  public_key = file(var.public_key_path)
  tags = {
    Name = "${var.project_name}-${var.environment}-ssh-key"
  }
}