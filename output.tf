output "connection_string" {
  value = "ssh -i ~/.ssh/${var.key_pair_name}.pem ubuntu@${aws_lightsail_instance.lightsail_terraform.public_ip_address}"
}