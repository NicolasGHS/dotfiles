#!/bin/bash

DOTFILES_DIR=~/dotfiles
CONFIG_DIR=~/.config

# Loop all dirs in dotfiles
for dir in "$DOTFILES_DIR"/*/; do
    # Get name from dir (bv. 'nvim')
    dir_name=$(basename "$dir")
    
    # full path
    target="$CONFIG_DIR/$dir_name"

    # Check if exists
    if [ -L "$target" ]; then
        echo "Symlink already exists: $target"
    elif [ -d "$target" ]; then
        echo "Directory already exists: $target – making back-up and replace."
        mv "$target" "$target.backup"
        ln -s "$dir" "$target"
    else
        ln -s "$dir" "$target"
        echo "Symlink made: $target → $dir"
    fi
done

