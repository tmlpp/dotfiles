#!/bin/bash

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

PATH=$PATH:~/bin:~/.local/bin:~/.local/bin/node-global/bin
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
. "$HOME/.cargo/env"
