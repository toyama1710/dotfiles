#! /usr/bin/bash

dconf load /com/gexperts/Tilix/ < tilix.conf
ln -snfv i3 ~/.config/i3
ln -snfv i3blocks ~/.config/i3blocks
ln -snfv fish ~/.config/fish
