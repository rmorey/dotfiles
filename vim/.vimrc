set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" Training away from arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Spacebar for leader
let mapleader=" "

" Turn on mouse
set mouse=a

" Reload config file
nmap <LEADER>r :source ~/.vimrc<CR>

" Clear search and match highlighting
nmap  <LEADER><LEADER> :match none<CR>:nohlsearch<CR>

" Toggle line numbers
nmap <leader>n :set invnumber<CR>:set invrelativenumber<CR>

" Tab stuffs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab


" Easy movement in panes
noremap <c-h> <C-w>h
noremap <c-j> <C-w>j
noremap <c-k> <C-w>k
noremap <c-l> <C-w>l

" Pane opening behavior that actually makes sense
set splitbelow
set splitright

" Trim all trailing whitespace
noremap <LEADER>ws :%s/\s\+$//g<CR><C-o>

" Colors
set background=dark
colorscheme desert
syntax on

" filetype detection
filetype plugin indent on

" tab completion
set wildmode=longest,list,full
set wildmenu

