#!/bin/bash

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

PATH=$PATH:~/bin:~/.local/bin
