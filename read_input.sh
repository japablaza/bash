#!/usr/bin/env bash

## READ
# read input into a variable: `read x_var`
# No variable specified? Will use $REPLY
# -n or -N pecifies number of characters to read
# -s will suppress output (usefull for password)
# -r disallows escape sequences, line continuation
## read x y
# input "1 2 3": x="1", y="2 3"

## $IFS Inpput File Separator

printf "These are couple examples of read\n"

echo "Using READ without variable"
read -s
printf "This is what you type: %s" $REPLY

printf "\n\n"

echo "Usin -r will scape the special caraters like \ / etc."
read -rs
printf "This is what you typed: %s\n" $REPLY


echo "========================================"

echo "This is a simeple while loop that check one word"

echo "Ingresa la letra correcta (Y/N)"

while [[ ! $respuesta ]]; do
  read -r -n 1 -s letra
  if [[ $letra = [yY] ]]; then
    respuesta="yes"
  elif [[ $letra = [nN] ]]; then
    respuesta="no"
  fi
done

printf "\n%s\n" $respuesta
