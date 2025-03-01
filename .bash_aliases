# Some aliases
alias l='less'
alias ls='ls -h --color=auto --group-directories-first'
alias l1='ls -1'
alias lss='ls -1'
alias ll='ls -l'
alias lll='ls -l | less'
alias la='ls -A'
alias RM='rm -rf'
alias rmr='rm -r'
alias rm.='rm -rfIv $PWD && cd ..'
alias cd..='cd ..'
alias df='df -h'
alias du='du -h'
alias dus='du -d 1 | sort -h'
alias free='free -h'
alias cls='clear'
alias ping='ping -c 5'
alias tra='trans'
alias traf='trans :fi'
alias off='shutdown -h now'
alias uz='unzip'
alias q='exit'
alias cal='cal -m'
alias y='xclip -i -selection clipboard'
alias p='xclip -o -selection clipboard'
alias decrypt="gpg --decrypt"
alias encrypt="gpg --encrypt"
alias cat="bat"

# p as in package operations
alias pU='yay -Suy' 	# update system
alias pS='yay -Ss' 	# search package
alias pI='yay -S' 	# install
alias pR='yay -R' 	# remove
alias pQ='yay -Q'    # list installed
alias pQi='yay -Qi'  # show package info
alias pCC='yay -Sc'
alias pm='pacman'
alias yeet='yay -Rns'

alias e='$EDITOR'

# config commands
alias c3='$EDITOR ~/.config/i3/config'
alias cvi='$EDITOR ~/.config/nvim/init.lua'
alias cqb='$EDITOR ~/.config/qutebrowser/config.py'
alias cb='$EDITOR ~/.bashrc'
alias cba='$EDITOR ~/.bash_aliases'
alias cwee='$EDITOR ~/.weechat/weechat.conf'

# Yadm and git
alias g='git'
alias lg='lazygit'
alias ly='lazygit -w ~ -g ~/.local/share/yadm/repo.git/'

# Touchpad
alias padoff='synclient TouchpadOff=1'
alias padon='synclient TouchpadOff=0'

# Ledger
export LEDGER_FILE=~/syncdir/ledger/my.ledger
alias led='ledger -f $LEDGER_FILE'
alias ler='ledger -f $LEDGER_FILE reg'
alias leb='ledger -f $LEDGER_FILE bal'

# wacom
alias wac='xsetwacom'

# directories
alias mkd='mkdir -p'
alias ..='cd..'
alias dirs='dirs -v'
alias d='dirs -v'
alias up1='pushd .. > /dev/null ; dirs -v'
alias up2='pushd ../.. > /dev/null ; dirs -v'
alias up3='pushd ../../.. > /dev/null ; dirs -v'
alias up4='pushd ../../../.. > /dev/null ; dirs -v'
alias up5='pushd ../../../../.. > /dev/null ; dirs -v'
alias pod='popd > /dev/null ; dirs -v'
alias pud='pushd'
alias pud1='pushd +1 > /dev/null ; dirs -v'
alias pud2='pushd +2 > /dev/null ; dirs -v'
alias pud3='pushd +3 > /dev/null ; dirs -v'
alias pud4='pushd +4 > /dev/null ; dirs -v'
alias pud5='pushd +5 > /dev/null ; dirs -v'
alias pud6='pushd +6 > /dev/null ; dirs -v'
alias pud7='pushd +7 > /dev/null ; dirs -v'
alias pud8='pushd +8 > /dev/null ; dirs -v'
alias pud9='pushd +9 > /dev/null ; dirs -v'
alias pod1='popd +1 > /dev/null ; dirs -v'
alias pod2='popd +2 > /dev/null ; dirs -v'
alias pod3='popd +3 > /dev/null ; dirs -v'
alias pod4='popd +4 > /dev/null ; dirs -v'
alias pod5='popd +5 > /dev/null ; dirs -v'
alias pod6='popd +6 > /dev/null ; dirs -v'
alias pod7='popd +7 > /dev/null ; dirs -v'
alias pod8='popd +8 > /dev/null ; dirs -v'
alias pod9='popd +9 > /dev/null ; dirs -v'
alias o='popd > /dev/null ; dirs -v'
alias u='pushd'
alias u1='pushd +1 > /dev/null ; dirs -v'
alias u2='pushd +2 > /dev/null ; dirs -v'
alias u3='pushd +3 > /dev/null ; dirs -v'
alias u4='pushd +4 > /dev/null ; dirs -v'
alias u5='pushd +5 > /dev/null ; dirs -v'
alias u6='pushd +6 > /dev/null ; dirs -v'
alias u7='pushd +7 > /dev/null ; dirs -v'
alias u8='pushd +8 > /dev/null ; dirs -v'
alias u9='pushd +9 > /dev/null ; dirs -v'
alias o1='popd +1 > /dev/null ; dirs -v'
alias o2='popd +2 > /dev/null ; dirs -v'
alias o3='popd +3 > /dev/null ; dirs -v'
alias o4='popd +4 > /dev/null ; dirs -v'
alias o5='popd +5 > /dev/null ; dirs -v'
alias o6='popd +6 > /dev/null ; dirs -v'
alias o7='popd +7 > /dev/null ; dirs -v'
alias o8='popd +8 > /dev/null ; dirs -v'
alias o9='popd +9 > /dev/null ; dirs -v'

alias herb='herbstclient'
alias nebo='newsboat'
alias sctl='systemctl'
alias scup='systemctl start'
alias scdown='systemctl stop'
alias scre='systemctl restart'
alias scon='systemctl enable'
alias scoff='systemctl disable'
alias scuup='systemctl --user start'
alias scudown='systemctl --user stop'
alias scure='systemctl --user restart'
alias scuon='systemctl --user enable'
alias scuoff='systemctl --user disable'

alias today='nvim ~/syncdir/notes/$(date "+%Y-%m-%d").md'

alias qcmd='qtile cmd-obj'

