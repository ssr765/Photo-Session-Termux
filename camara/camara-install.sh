#!/bin/bash

# --- Dependencias
pkg update
pkg install termux-api openssh iproute2 -y

# --- chmod
chmod +x camara-ip.sh
chmod +x camara-fotos.sh
chmod +x camara-guardar.sh

# --- Comandos
# obtenerip
echo "alias obtenerip=./camara-ip.sh" >> ~/.bashrc
# comenzar
echo "alias comenzar=sshd" >> ~/.bashrc
# detener
echo "alias detener='kill -9 $(pgrep sshd)'" >> ~/.bashrc

# --- Carpeta de fotos
mkdir ~/capturas

# --- Comprobar permisos
termux-camera-info > /dev/null

# --- Mover los archivos a la raíz
script_path=$(dirname "$(readlink -f "$0")")
cd $script_path
mv camara-* ~
cd ~
#rm -rf $script_path
#rm -rf camara-install.sh