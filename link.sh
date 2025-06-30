#!/bin/bash

DOTFILES_DIR=~/dotfiles
CONFIG_DIR=~/.config

# Loop over all dirs in dotfiles
for dir in "$DOTFILES_DIR"/*/; do
    # Haal de naam van de directory (bv. 'nvim')
    dir_name=$(basename "$dir")
    
    # Volledig pad naar doel-symlink
    target="$CONFIG_DIR/$dir_name"

    # Check of er al iets bestaat op de targetlocatie
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

