#!/bin/bash
info=$(last -F | grep -m 2 -v 'reboot' | awk 'NR==2 {print $1, $4, $5, $6, $7}')

# Mostrar un cuadro de diálogo con el mensaje
zenity --warning --width=400 --text="Al ingresar a este dispositivo aceptas las politicas. La información que contiene este dispositivo es privada y de caracter confidencial. Ultimo inicio de sesión:\n$info"
