#!/usr/bin/zsh


# anitgen stuff 
source ~/.zsh/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# history stuff
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history
 
# use walters prompt
autoload -Uz promptinit
promptinit
prompt walters

# enable awesome completion
autoload -Uz compinit && compinit

# Use Vim as standard editor
export EDITOR=/usr/bin/vim

export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin

# set editing mode to Vi
bindkey -v

setopt correct

case $TERM in
    xterm*)
        precmd () {print -Pn "\e]0;%n@%m: %~\a"}
        ;;
esac

# Various aliases
alias bc="bc -ql" # launch quitely and with math stuff
alias csv="column -t -s','"
alias diff="diff --color=auto"
alias emacs="emacs -nw" # launch without X by default
alias -g fortune="fortune -a" # use all fortunes 
alias grep="grep --color=auto"
alias ipython="ipython --no-banner"
alias jctl=journalctl
alias ls="ls --color=auto"
alias la="ls -A"
alias moo="fortune | cowsay | sm -b black -f white -n 'monospace' -a 1 -" # lol
alias pacaur="pacaur --color=auto"
alias pacman="pacman --color=auto"
alias ppt2pdf="libreoffice --headless --invisible --convert-to pdf"
alias sctl="sudo systemctl" # cause it's a PITA to type
alias tree="tree -C"
alias view="vim -R" # launch vim in readonly mode
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde' # this which best which
alias open=xdg-open
alias -g lc="wc -l"
alias svim="sudo vim"

if [[ -f ~/.zsh_local ]]; then
    source ~/.zsh_local
fi

source .profile

PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
xset b off
