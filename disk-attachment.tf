resource "aws_lightsail_disk_attachment" "attachment" {
  disk_name     = aws_lightsail_disk.disk1.name
  instance_name = aws_lightsail_instance.lightsail_terraform.name
  disk_path     = "/dev/xvdf"
  depends_on    = [aws_lightsail_disk.disk1, aws_lightsail_instance.lightsail_terraform]
}