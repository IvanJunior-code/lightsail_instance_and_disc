resource "aws_lightsail_instance" "lightsail_terraform" {
  name              = "lightsail_terraform"
  availability_zone = var.availability_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  key_pair_name     = var.key_pair_name
  depends_on        = [aws_lightsail_disk.disk1]

  tags = {
    Name = "Lightsail instance"
  }
}