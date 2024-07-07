resource "aws_lightsail_instance" "lightsail_terraform" {
  name              = "lightsail_terraform"
  availability_zone = "us-east-1a"
  blueprint_id      = "ubuntu_22_04" #aws lightsail get-blueprints
  bundle_id         = "micro_3_0"    #aws lightsail get-bundles
  key_pair_name     = var.key_pair_name
}