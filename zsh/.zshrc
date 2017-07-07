#!/usr/bin/zsh

# anitgen stuff 
if [[ -f ~/.zsh/antigen.zsh ]]; then
    source ~/.zsh/antigen.zsh
    antigen bundle zsh-users/zsh-syntax-highlighting
    antigen bundle oh-my-zsh/golang
    antigen apply
fi

# history stuff
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.history
 
# use walters prompt
autoload -Uz promptinit && promptinit
prompt walters

# enable awesome completion
autoload -Uz compinit && compinit

# set editing mode to emacs
bindkey -e

# Disable the terminal bell
if xhost >& /dev/null ; then xset b off ; fi
 
# Set terminal title, I have no idea how this works
case $TERM in
    xterm*)
        precmd () {print -Pn "\e]0;%n@%m: %~\a"}
        ;;
esac

# source aliases
if [[ -f ~/.zsh_aliases ]]; then
    source ~/.zsh_aliases
fi

# Source local zsh config
if [[ -f ~/.zsh_local ]]; then
    source ~/.zsh_local
fi

export EDITOR=/usr/bin/vim
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
