#!/bin/sh
# Ejecutar como root
dnf -y install openssh-server openssh-clients
service sshd start
chkconfig –level 235 sshd on
service sshd restart
ifconfig
echo "SSH configurado"