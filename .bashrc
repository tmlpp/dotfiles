#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd
shopt -s histappend

HISTSIZE=-1
HISTFILESIZE=-1
HISTCONTROL=ignoreboth

PS1="\[$(tput bold)\]\[$(tput setaf 1)\]\u@\h \[$(tput setaf 4)\]\w\n\\$ \[$(tput sgr0)\]"

# Add bash aliases and functions
if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

if [ -f ~/.bash_functions ]; then
  source ~/.bash_functions
fi

# bash-git-prompt from https://github.com/magicmonty/bash-git-prompt
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_FETCH_REMOTE_STATUS=0
source ~/.repos/bash-git-prompt/gitprompt.sh

export EDITOR="nvim"
export BROWSER=qutebrowser
export TERMINAL=kitty

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:~/app/tmuxifier/bin
eval "$(tmuxifier init -)"
export PYENV_ROOT="$HOME/.pyenv"
eval "$(fzf --bash)"
. "$HOME/.cargo/env"
