#!/usr/bin/env bash


if [[ -e $1 ]]; then
  echo "This file name is already taken"
else
  echo "Would you like to create the file?"
fi
