#!/usr/bin/bash

DIR=$PWD

rm -rf ~/.config/i3
ln -snfv $DIR/i3 ~/.config/i3

rm -rf ~/.config/i3blocks
ln -snfv $DIR/i3blocks ~/.config/i3blocks

ln -snfv $DIR/vimrc ~/.vimrc

rm .zshenv
ln -snfv $DIR/zsh/.zshenv ~/.zshenv
ln -snfv $DIR/zsh/ ~/.zsh

ln -snfv $DIR/starship.toml ~/.config/starship.toml
