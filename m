#!/bin/bash

if [[ -z $(ps -aux | grep -v grep | grep -w play) ]]; then
    echo "Music Player is not running."
    exit 1
fi


current=$(ps -aux | grep -v grep | grep -w play | awk '{print $2;}') 

if [ "$(ps -o state= -p $current)" = T ]; then
    kill -CONT $current
else
    kill -STOP $current

fi
