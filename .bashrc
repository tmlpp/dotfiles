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

# PS1='\u@\h \W\$ '
PS1="\[$(tput bold)\]\[$(tput sitm)\]\[$(tput setaf 2)\][\[$(tput setaf 3)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 3)\]\h \[$(tput setaf 6)\]\$PWD\[$(tput setaf 2)\]]\n\[$(tput setaf 4)\]\\$ \[$(tput sgr0)\]"
# PS1="\[\e[3m\u@\h $PWD\n\\$ \]"

# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# bash-git-prompt from https://github.com/magicmonty/bash-git-prompt
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_FETCH_REMOTE_STATUS=0
source ~/.repos/bash-git-prompt/gitprompt.sh

export EDITOR=nvim
export BROWSER=qutebrowser

mkcd () {
        mkdir -p "$1"
        cd "$1"
}
