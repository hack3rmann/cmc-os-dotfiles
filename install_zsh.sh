#!/usr/bin/bash

ARCHIVE_PATH="$HOME/zsh"
ARCHIVE_FILE="zsh.tar.gz"

mkdir -p $ARCHIVE_PATH
mkdir -p $HOME/.local/bin

cd $ARCHIVE_PATH

wget https://github.com/romkatv/zsh-bin/releases/download/v6.1.1/zsh-5.8-linux-x86_64.tar.gz -O $ARCHIVE_FILE
tar -xzvf $ARCHIVE_FILE

ln -sfT $ARCHIVE_PATH/bin/zsh $HOME/.local/bin/zsh
