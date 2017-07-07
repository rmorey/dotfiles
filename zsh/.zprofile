export GOPATH=$HOME/go:$HOME/jugglehouse/Affogato/api
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export EDITOR=/usr/bin/vim
export PATH="$HOME/.cargo/bin:$PATH"
