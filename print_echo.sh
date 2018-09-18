#!/usr/bin/env bash

printf "Hello World\n"

printf "Hola mundo\n"

printf "Hola %s, como estas?\n" $USER

printf "P%sr\n" a b c d e f g

echo "This is an example of print save on variable"
printf -v mi_nombre "String saved in a variable\n"
echo $mi_nombre

echo "Fin del archivo"

## MORE INFORMATION ABOUT printf at
## http://goo.gl/ZThKCj
## help printf
## man printf
## man 3 printf
