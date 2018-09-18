#!/bin/bash

# Testing if we have an argument in this script

# If there is an argument

if [[ ! $1 ]]; then
  echo "Debes usar un argumento"
  exit 1
fi

# Creando variables
scriptname="$1"
scriptdir="/bin"
filename="${scriptdir}/${scriptname}"

# Verificar si el archivo exciste
if [[ -e $filename ]]; then
  echo "El archivo $filename ya exciste"
  exit 1
fi

# Verificar si el nombre del archivo es un comando
if type "$scriptname"; then
  echo "El argumento usado ${scriptname} es un comando de Linux"
  exit 1
fi

# Verificar si el directorio exciste
if [[ ! -d $scriptdir ]]; then
  if mkdir "$scriptdir"; then
    echo "Se creo el directorio ${scriptdir}"
  else
    "No se pudo crear el directorio ${scriptdir}"
    exit 1
  fi
fi
