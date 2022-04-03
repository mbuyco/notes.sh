#!/bin/bash

set -euo pipefail

# Note paths
NOTES_FILENAME="notessh-$(date +%Y%m%d).txt"
NOTES_PATH="$HOME/notes"
ACTIVE_NOTE_PATH="$NOTES_PATH/$NOTES_FILENAME"

# Create notes folder if not exists
if [ ! -d $NOTES_PATH ]; then
  mkdir $NOTES_PATH
fi

# Create active note file if not exists
if [ ! -e $ACTIVE_NOTE_PATH ]; then
  touch $ACTIVE_NOTE_PATH
fi

# Run CLI text editor (neovim, vim or nano)
if command -v nvim &> /dev/null
then
  nvim $ACTIVE_NOTE_PATH
elif command -v vim &> /dev/null
then
  vim $ACTIVE_NOTE_PATH
else
  nano $ACTIVE_NOTE_PATH
fi
