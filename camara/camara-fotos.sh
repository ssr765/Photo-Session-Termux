#!/bin/bash

NUM_FOTOS=$1

for ((i = 1; i <= $NUM_FOTOS; i++))
do
    termux-camera-photo -c 0 capturas/$(date +%Y%m%d%H%M%S).jpg
    sleep 5
done
