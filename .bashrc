#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='\u@\h \W\$ '
PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\[$(tput setaf 3)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 3)\]\h \[$(tput setaf 6)\]\W\[$(tput setaf 2)\]]\[$(tput setaf 4)\]\\$ \[$(tput sgr0)\]"

# Some aliases
alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -A'
alias rm='rm -r'
alias cd..='cd ..'
alias df='df -h'
alias du='du -h'
alias free='free -h'
alias cls='clear'
alias ping='ping -c 5'
alias tra='trans'
alias mkd='mkdir -p'
alias off='shutdown -h now'
alias ..='cd..'

# Package operations
alias U='trizen -Suy' 	# update system
alias S='trizen -Ss' 	# search package
alias I='trizen -S' 	# install
alias R='trizen -R' 	# remove
alias CC='sudo pacman -Sc'
alias pm='pacman'

alias v='nvim'

# config commands
alias c3='nvim ~/.config/i3/config'
alias cvi='nvim ~/.config/nvim/init.vim'
alias cqb='nvim ~/.config/qutebrowser/config.py'
alias cb='nvim ~/.bashrc'
alias cwee='nvim ~/.weechat/weechat.conf'

# Touchpad
alias padoff='synclient TouchpadOff=1'
alias padon='synclient TouchpadOff=0'

# Ledger
alias led='ledger -f ~/Dropbox/ledger/my.ledger'
alias ler='ledger -f ~/Dropbox/ledger/my.ledger reg'
alias leb='ledger -f ~/Dropbox/ledger/my.ledger bal'
