output "connection_string" {
  value = "ssh -i ${var.path_key_pair} ubuntu@${aws_lightsail_instance.lightsail_terraform.public_ip_address}"
}