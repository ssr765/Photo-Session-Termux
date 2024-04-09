#!/bin/bash

USER=$(whoami)
IP=$(ifconfig | grep "inet 192" | awk '{print substr($2, 1, length($2))}')

if [ -n "$IP" ]; then
    termux-toast -b#f562ae "Para configurar la conexión, pon el siguiente comando en el dispositivo de control: fotoip $USER@$IP"
    echo "> fotoip $USER@$IP"
else
    termux-toast -b red "ERROR: No se ha encontrado la IP, asegurate que estás conectado a una conexión Wi-Fi."
fi
