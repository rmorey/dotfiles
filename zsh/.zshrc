#!/usr/bin/zsh

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history

# use walters prompt
autoload -Uz promptinit && promptinit
prompt walters

# enable awesome completion
autoload -Uz compinit && compinit

# Use Vim as standard editor
export EDITOR=/usr/bin/vim

# set editing mode to Vi
bindkey -v

# source lesspipe script, if it exists
if [[ -f /etc/profile.d/lesspipe.sh ]]; then
    source /etc/profile.d/lesspipe.sh
fi

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"


# Various aliases
alias bc="bc -ql" # launch quitely and with math stuff
alias diff="diff --color=auto"
alias emacs="emacs -nw" # launch without X by default
alias -g fortune="fortune -a" # use all fortunes 
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias moo="fortune | cowsay | sm -b black -f white -n 'monospace' -a 1 -" # lol
alias pacaur="pacaur --color=auto"
alias pacman="pacman --color=auto"
alias sctl="sudo systemctl" # cause it's a PITA to type
alias tree="tree -C"
alias view="vim -R" # launch vim in readonly mode
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde' # this which best which
alias open=xdg-open
alias -g lc="wc -l"
