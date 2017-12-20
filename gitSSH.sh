#!/bin/sh
#Generar clave ssh para git
USER=$1
ssh-keygen
cd /home/$USER/.ssh/
cat id_rsa.pub
echo "Copiar en git"
