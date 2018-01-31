# Some aliases
alias l='less'
alias ls='ls --color=auto'
alias ll='ls -lh'
alias lll='ls -lh | less'
alias la='ls -A'
alias rm='rm -r'
alias cd..='cd ..'
alias df='df -h'
alias du='du -h'
alias dus='du -d 1 | sort -h'
alias free='free -h'
alias cls='clear'
alias ping='ping -c 5'
alias tra='trans'
alias mkd='mkdir -p'
alias off='shutdown -h now'
alias ..='cd..'

# p as in package operations
alias pU='trizen -Suy' 	# update system
alias pS='trizen -Ss' 	# search package
alias pI='trizen -S' 	# install
alias pR='trizen -R' 	# remove
alias pQ='trizen -Q'    # list installed
alias pCC='sudo pacman -Sc'
alias pm='pacman'

alias v='nvim'

# config commands
alias c3='nvim ~/.config/i3/config'
alias cvi='nvim ~/.config/nvim/init.vim'
alias cqb='nvim ~/.config/qutebrowser/config.py'
alias cb='nvim ~/.bashrc'
alias cba='nvim ~/.bash_aliases'
alias cwee='nvim ~/.weechat/weechat.conf'

# Yadm and git
alias y='yadm'
alias g='git'

# Touchpad
alias padoff='synclient TouchpadOff=1'
alias padon='synclient TouchpadOff=0'

# Ledger
alias led='ledger -f ~/Dropbox/ledger/my.ledger'
alias ler='ledger -f ~/Dropbox/ledger/my.ledger reg'
alias leb='ledger -f ~/Dropbox/ledger/my.ledger bal'
