export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export EDITOR=/usr/bin/vim

