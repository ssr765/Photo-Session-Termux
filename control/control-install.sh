#!/bin/bash

# --- Dependencias
pkg update
pkg install termux-api -y

# --- chmod
chmod +x control-conf.sh
chmod +x control-fotos.sh
chmod +x control-ayuda.sh
chmod +x control-ssh.sh

# --- Comandos
# fotoip [ip]
echo "alias fotoip=./control-conf.sh" >> ~/.bashrc
# foto [num_fotos]
echo "alias foto=./control-fotos.sh" >> ~/.bashrc
# flash (TODO)

# ayuda
echo "alias ayuda=./control-ayuda.sh" >> ~/.bashrc

# --- Mover los archivos a la raíz
script_path=$(dirname "$(readlink -f "$0")")
cd $script_path
mv control-* ~
cd ~
#rm -rf $script_path
#rm -rf control-install.sh