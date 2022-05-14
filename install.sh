#!/usr/bin/bash

DIR=$PWD
dconf load /com/gexperts/Tilix/ < tilix.conf

rm -rf ~/.config/i3
ln -snfv $DIR/i3 ~/.config/i3

rm -rf ~/.config/i3blocks
ln -snfv $DIR/i3blocks ~/.config/i3blocks

rm -rf ~/.config/fish
ln -snfv $DIR/fish ~/.config/fish
