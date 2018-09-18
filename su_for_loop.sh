#!/usr/bin/env bash

for j in $(ls -lSh | awk ' {print $5} ' ); do
  lista="items: $j"
  echo $lista
done
