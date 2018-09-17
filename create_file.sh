#!/bin/bash

# Testing if we have an argument in this script

# If there is an argument

if [[ ! $1 ]]; then
  echo "Debes usar un argumento"
  exit 1
fi

# Creando variables

scriptdir="bin"
filename="$scriptdir/$1"

# Verificar si el archivo exciste

if [[ -e $scriptdir ]]; then
  echo "El archivo $filename ya exciste"
  exit 1
fi

# Verificar si el directorio exciste

if [[ ! -d $scriptdir]]; then
  if [[ mkdir $scriptdir ]]
