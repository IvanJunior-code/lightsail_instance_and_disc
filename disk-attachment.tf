resource "aws_lightsail_disk_attachment" "test" {
  disk_name     = aws_lightsail_disk.disk1.name
  instance_name = aws_lightsail_instance.lightsail_terraform.name
  disk_path     = "/dev/nvme1n1"
  depends_on    = [aws_lightsail_disk.disk1, aws_lightsail_instance.lightsail_terraform]
}