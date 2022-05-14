#!/usr/bin/bash

DIR=$PWD
dconf load /com/gexperts/Tilix/ < tilix.conf
ln -snfv $DIR/i3 ~/.config/i3
ln -snfv $DIR/i3blocks ~/.config/i3blocks
ln -snfv $DIR/fish ~/.config/fish
