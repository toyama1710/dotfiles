#!/usr/bin/bash

DIR=$PWD

rm -rf ~/.config/i3
ln -snfv $DIR/i3 ~/.config/i3

rm -rf ~/.config/i3blocks
ln -snfv $DIR/i3blocks ~/.config/i3blocks

ln -snfv $DIR/vimrc ~/.vimrc
