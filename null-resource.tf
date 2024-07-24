resource "null_resource" "exec" {
  provisioner "file" {
    source      = "script.sh"
    destination = "/tmp/script.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "echo Exibindo filesystem",
      "df -h",
      "echo Exibindo tabela de partições e discos",
      "sudo fdisk -l",
      "echo Configurando permissão no script",
      "chmod +x /tmp/script.sh",
      "echo Executando script",
      "sudo /tmp/script.sh"
    ]
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file(var.path_key_pair)
    host        = aws_lightsail_instance.lightsail_terraform.public_ip_address
  }
}