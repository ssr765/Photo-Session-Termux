#!/bin/bash

# Ir al directorio del script
script_path=$(dirname "$(readlink -f "$0")")
cd $script_path

# --- Dependencias
echo "[Cámara] Instalando dependencias..."
pkg update
pkg install termux-api openssh iproute2 -y

# --- chmod
echo "[Cámara] Asignando permisos..."
chmod +x *

# --- Comandos
echo "[Cámara] Creando comandos..."
# obtenerip
echo "alias obtenerip=~/camara-ip.sh" >> ~/.bashrc
# comenzar
echo "alias comenzar=sshd" >> ~/.bashrc
# detener
echo "alias detener='kill -9 $(pgrep sshd)'" >> ~/.bashrc

# --- Carpeta de fotos
echo "[Cámara] Creando carpeta de capturas..."
mkdir ~/capturas

# --- Comprobar permisos
echo "[Cámara] Comprobando acceso a la cámara..."
termux-camera-info > /dev/null

# --- Mover los archivos a la raíz
echo "[Cámara] Ultimando la instalación..."
mv camara-* ~
cd ~
rm -rf ~/pst
rm -rf ~/camara-install.sh

echo "[Cámara] Instalación completada."