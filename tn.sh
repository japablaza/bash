#!/bin/bash

# Simple note-taking script
# Co-Author japablaza

echo $(date): $* >> note.txt
echo Se ha guardado la nota: $*
