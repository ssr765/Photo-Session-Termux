#!/bin/bash

# Ir al directorio del script
script_path=$(dirname "$(readlink -f "$0")")
cd $script_path

# --- Dependencias
echo "[Control] Instalando dependencias..."
pkg update
pkg install termux-api -y

# --- chmod
echo "[Control] Asignando permisos..."
chmod +x *

# --- Comandos
echo "[Control] Creando comandos..."
# fotoip [ip]
echo "alias fotoip=~/control-conf.sh" >> ~/.bashrc
# foto [num_fotos]
echo "alias foto=~/control-fotos.sh" >> ~/.bashrc
# flash (TODO)

# ayuda
echo "alias ayuda=~/control-ayuda.sh" >> ~/.bashrc

# --- Mover los archivos a la raíz
echo "[Control] Ultimando la instalación..."
mv control-* ~
cd ~
rm -rf ~/pst
rm -rf ~/control-install.sh

echo "[Control] Instalación completada."