#!/bin/bash

# Ir al directorio del script
script_path=$(dirname "$(readlink -f "$0")")
cd $script_path

# --- Dependencias
pkg update
pkg install termux-api openssh iproute2 -y

# --- chmod
chmod +x *

# --- Comandos
# obtenerip
echo "alias obtenerip=~/camara-ip.sh" >> ~/.bashrc
# comenzar
echo "alias comenzar=sshd" >> ~/.bashrc
# detener
echo "alias detener='kill -9 $(pgrep sshd)'" >> ~/.bashrc

# --- Carpeta de fotos
mkdir ~/capturas

# --- Comprobar permisos
termux-camera-info > /dev/null

# --- Mover los archivos a la raíz
mv camara-* ~
cd ~
#rm -rf ~/Photo-Session-Termux
#rm -rf ~/camara-install.sh