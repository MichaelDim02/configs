# ~/.bashrc
#
neofetch
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

alias scim='sc-im'

alias ..="cd .."
alias ...="cd ../../"

alias ccrypt='~/Documents/cc/ccrypt'

alias nm="neomutt"
alias nb="newsboat"

alias ncm="ncmpcpp"
alias ncm="ncmpcpp"

PS1="\[$(tput bold)\]\[\033[38;5;1m\]\u@\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;12m\]\w\[$(tput sgr0)\] \\$ \[$(tput sgr0)\]"
#PS1='\e[0;31[\u@\h\e[m \W $ '
