#!/bin/bash

PATH_FOTOS="/storage/emulated/0/Pictures/Photo-Session-Termux"
FOTOS_IP=$(cat control-conn)
NUM_FOTOS=$1

mkdir -p $PATH_FOTOS

termux-toast -b#f562ae "Las fotos empezaran en 5 segundos aproximadamente."

ssh $FOTOS_IP -p 8022 "nohup sh -c './camara-fotos.sh $NUM_FOTOS' > /dev/null 2> /dev/null &"

sleep 5

# Simulación de la toma de fotos.
for ((i = 1; i <= $NUM_FOTOS; i++))
do
    termux-toast -b#f562ae "Tomando foto $i"
    sleep 5
done

termux-toast -b#f562ae "Fotos tomadas."

scp -P 8022 $FOTOS_IP:capturas/* $PATH_FOTOS
ssh $FOTOS_IP -p 8022 "./camara-guardar.sh"

termux-toast -b#f562ae "Se han guardado las fotos."

