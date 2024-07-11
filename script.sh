#!/bin/bash

# Nome do dispositivo
DEVICE="/dev/nvme1n1"

# Nome do ponto de montagem
POINT="/mnt/disk1"

# Criar nova partição
sudo fdisk $DEVICE <<EOF
n
p
1


w
EOF

# Formatar a nova partição para ext4
sudo mkfs.ext4 -F ${DEVICE}p1

# Criar ponto de montagem
sudo mkdir -p ${POINT}

# Adicionar ao fstab para montagem automática
sudo echo "${DEVICE}p1 ${POINT} ext4 defaults 0 1" | sudo tee -a /etc/fstab

# Montar tabela de montagem
sudo mount -a

# Configurar permissão no ponto de montagem para o usuário ubuntu
sudo chown -R ubuntu:ubuntu ${POINT}
