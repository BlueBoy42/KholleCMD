#!/bin/bash
mkdir -p ~/Documents/Kholles
date_var=$(date +"%d.%m.%y")
echo "Création d'une kholle à la date du $date_var"
mkdir -p ~/Documents/Kholles/$date_var
if [ ! -L ~/Bureau/Kholle ]; then
    ln -s ~/Documents/Kholles/$date_var ~/Bureau/Kholle
fi

while getopts "co" opt; do
    case $opt in
        c)
            if [ ! -f "$HOME/Documents/Kholles/$date_var/Kholle.c" ]; then
                > ~/Documents/Kholles/$date_var/Kholle.c
            fi
            if [ ! -L "$HOME/Bureau/Kholle.c" ]; then
                ln -s ~/Documents/Kholles/$date_var/Kholle.c ~/Bureau/Kholle.c
                echo "Fichier c créé"
            fi
            ;;
        o)
            if [ ! -f "$HOME/Documents/Kholles/$date_var/Kholle.ml" ]; then
                > ~/Documents/Kholles/$date_var/Kholle.ml
            fi
            if [ ! -L "$HOME/Bureau/Kholle.ml" ]; then
                ln -s ~/Documents/Kholles/$date_var/Kholle.ml ~/Bureau/Kholle.ml
                echo "Fichier ml créé"
            fi
            ;;
        *)
            echo "Options correctes :"
            echo "-o pour Ocaml"
            echo "-c pour C"
    esac
done




