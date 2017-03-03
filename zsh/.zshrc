#!/usr/bin/env zsh

# anitgen stuff 
source ~/.zsh/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# history stuff
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.history
 
# use walters prompt
autoload -Uz promptinit
promptinit
prompt walters

# enable awesome completion
autoload -Uz compinit && compinit

# set editing mode to Vi
bindkey -e

# Disable the terminal bell
xset b off

# Set terminal title
case $TERM in
    xterm*)
        precmd () {print -Pn "\e]0;%n@%m: %~\a"}
        ;;
esac

if [[ -f ~/.zsh_aliases ]]; then
    source ~/.zsh_aliases
fi

# Source local zsh config
if [[ -f ~/.zsh_local ]]; then
    source ~/.zsh_local
fi
