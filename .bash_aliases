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
alias uz='unzip'

# p as in package operations
alias pU='aurman -Suy' 	# update system
alias pS='aurman -Ss' 	# search package
alias pI='aurman -S' 	# install
alias pR='aurman -R' 	# remove
alias pQ='aurman -Q'    # list installed
alias pQi='aurman -Qi'  # show package info
alias pCC='sudo pacman -Sc'
alias pm='pacman'

alias e='$EDITOR'

# config commands
alias c3='$EDITOR ~/.config/i3/config'
alias cvi='$EDITOR ~/.config/nvim/init.vim'
alias cqb='$EDITOR ~/.config/qutebrowser/config.py'
alias cb='$EDITOR ~/.bashrc'
alias cba='$EDITOR ~/.bash_aliases'
alias cwee='$EDITOR ~/.weechat/weechat.conf'

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
