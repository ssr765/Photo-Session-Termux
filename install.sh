#!/bin/bash

read -p "> Selecciona un instalador (control/camara): " instalador

# Ejecutar el instalador seleccionado.
if [ "$instalador" = "control" ]; then
    ~/pst/control/control-install.sh
    status=$?
elif [ "$instalador" = "camara" ]; then
    ~/pst/camara/camara-install.sh
    status=$?
else
    echo "Instalador no encontrado"
    exit 1
fi

# Comprobar si ha habido errores en la instalación.
if [ "$status" -ne 0 ]; then
    echo "Han habido errores en la instalación. Revisa nuevamente las instrucciones."
    exit $status
fi