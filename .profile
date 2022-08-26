#!/bin/bash

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

PATH=$PATH:~/bin:~/.local/bin
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
