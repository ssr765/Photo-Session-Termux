#!/bin/bash

USER=$(whoami)
IP=$(ip a | grep "inet 192" | awk '{print substr($2, 1, length($2)-3)}')

if [ -n "$IP" ]; then
    termux-toast -b#f562ae "Para configurar la conexión, pon el siguiente comando en la tablet: fotoip $USER@$IP"
    echo "> fotoip $USER@$IP"
else
    termux-toast -b red "ERROR: No se ha encontrado la IP, asegurate que estás conectado a una conexión Wi-Fi."
fi
