#!/bin/bash

# Simple note-taking script
# Co-Author japablaza

# Preguntando por la nota
read -p "Ingresa una nota: " nota

# Sustituir comandos por variables dentro de este programa
date=$(date)
grupo="$1" # Grupo donde vamos a dejar la nota
filename="${grupo}_note.txt"

echo "$date: $nota" >> "$filename"
echo "la nota '$nota' se ha guardado en el archivo $filename"
