# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/michael/.zshrc'

autoload -U colors && colors
zstyle ':completion:*' menu select
zmodload zsh/complist
#compinit
_comp_options+=(globdots)

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

PS1="%{$fg[red]%}%n%{$reset_color%} ᛋ "

alias ls="ls --color=auto -p"
alias diff="diff --color=auto"
alias grep="grep --color=auto"
alias grep="grep --color=auto"

alias ccrypt='~/Documents/.ccrypt/ccrypt'
alias nm="neomutt"
alias nb="newsboat"
alias ncm="ncmpcpp"
alias rtv="rtv --enable-media"
alias sxiv="sxiv -a"

autoload -Uz compinit
compinit
# End of lines added by compinstall
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
