#!/bin/sh

homebin="$HOME/bin"
if [ ! -d "$homebin" ]; then
    mkdir $homebin
fi
cp music quit next $HOME/bin
