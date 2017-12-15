#!/bin/sh
su $1
dnf -y install openssh-server openssh-clients
service sshd start
chkconfig –level 235 sshd on
service sshd restart
ifconfig
echo "HOLA"