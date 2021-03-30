#!/bin/bash

set -euo pipefail

NOTES_FILENAME="notessh-$(date +%Y%m%d).txt"

if [ ! -e "~/notes" ]; then
  mkdir ~/notes
fi

if [ ! -e "~/notes/$NOTES_FILENAME" ]; then
  touch ~/notes/$NOTES_FILENAME
fi

cd ~/notes
which vim

if [ $? -eq 1 ]; then
  echo "ERROR: Vim is not installed"
else
  vim ~/notes/$NOTES_FILENAME
fi
