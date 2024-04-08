#!/bin/bash

# Ir al directorio del script
script_path=$(dirname "$(readlink -f "$0")")
cd $script_path

# --- Dependencias
pkg update
pkg install termux-api -y

# --- chmod
chmod +x *

# --- Comandos
# fotoip [ip]
echo "alias fotoip=~/control-conf.sh" >> ~/.bashrc
# foto [num_fotos]
echo "alias foto=~/control-fotos.sh" >> ~/.bashrc
# flash (TODO)

# ayuda
echo "alias ayuda=~/control-ayuda.sh" >> ~/.bashrc

# --- Mover los archivos a la raíz
mv control-* ~
cd ~
#rm -rf ~/Photo-Session-Termux
#rm -rf ~/control-install.sh