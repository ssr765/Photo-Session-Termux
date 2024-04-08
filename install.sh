#!/bin/bash

read -p "> Selecciona un instalador (control/camara): " instalador

if [ "$instalador" = "control" ]; then
    ~/pst/control/control-install.sh
elif [ "$instalador" = "camara" ]; then
    ~/pst/camara/camara-install.sh
else
    echo "Instalador no encontrado"
fi