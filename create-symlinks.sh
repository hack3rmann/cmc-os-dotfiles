#!/usr/bin/bash

DOTFILES_DIR=$HOME/dotfiles

create_link() {
    FILE=$1

    # Deal with existing config
    if [[ -L $HOME/$FILE ]]; then
        echo "Found symlink ~/$FILE, deleting it..."
        rm $HOME/$FILE
    elif [[ -f $HOME/$FILE || -d $HOME/$FILE ]]; then
        echo "Found configuration in ~/$FILE, renaming it to ~/$FILE.bak"
        mv $HOME/$FILE $HOME/$FILE.bak
    fi

    DIR=$(dirname $FILE)

    # Create a directory if not present
    if [[ ! $DIR = "" && ! -d $HOME/$DIR ]]; then
        echo "Creating directory ~/$DIR"
        mkdir -p $HOME/$DIR
    fi

    # Create symlink to dotfiles
    echo "Creating symlink ~/$FILE -> $DOTFILES_DIR/$FILE"
    ln -sfT $DOTFILES_DIR/$FILE $HOME/$FILE
}

create_link .bashrc
create_link .aliases.sh
create_link .clang-format
create_link .clangd
create_link .config/nvim
