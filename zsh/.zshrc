#!/usr/bin/zsh

# anitgen stuff 
if [[ -f ~/.zsh/antigen.zsh ]]; then
    source ~/.zsh/antigen.zsh
    antigen bundle zsh-users/zsh-syntax-highlighting
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

arccomp=/usr/share/php/arcanist/resources/shell/bash-completion
if [[ -f $arccomp ]]; then
    source $arccomp
fi 

if type "lesspipe.sh" > /dev/null; then
    LESSOPEN="|lesspipe.sh %s"
    export LESSOPEN
fi

if type "exa" > /dev/null; then
    alias -g ls=exa
fi

# Zsh specific aliases
alias -g fortune="fortune -a" # use all fortunes 
alias -g lc="wc -l" # line count
alias android-emu="$HOME/Android/Sdk/emulator/emulator -avd Nexus_5X_API_25_x86"
alias bc="bc -ql" # launch quitely and with math stuff
alias cdg="cd \$(git root)"
alias csv="column -t -s','"
alias diff="diff --color=auto"
alias dropbox="dropbox-cli"
alias emacs="emacs -nw" # launch without X by default
alias grep="grep --color=auto"
alias ipython="ipython --no-banner"
alias jctl="sudo journalctl"
alias moo="fortune | cowsay | sm -b black -f white -n 'monospace' -a 1 -" # lol
alias open=xdg-open
alias pacaur="pacaur --color=auto"
alias pacman="pacman --color=auto"
alias pdf="libreoffice --headless --invisible --convert-to pdf"
alias sctl="sudo systemctl" # cause it's a PITA to type
alias tree="tree -C" # use colors
alias view="vim -R" # launch vim in readonly mode
alias vimrc="vim $HOME/.vimrc"
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde' # this which best which
alias zshrc="vim $HOME/.zshrc && source $HOME/.zshrc"

# Source local zsh config
if [[ -f ~/.zsh_local ]]; then
    source ~/.zsh_local
fi

export EDITOR=/usr/bin/vim
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
