resource "aws_lightsail_disk" "disk1" {
  name              = "disk1"
  size_in_gb        = 8
  availability_zone = var.availability_zone
}