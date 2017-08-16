filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'solarnz/arcanist.vim'
Plugin 'shougo/neocomplete.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'

" Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" Plugin 'Valloric/YouCompleteMe'

filetype plugin indent on
call vundle#end()

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

" filetype detection

" Powerline
set laststatus=2
set t_Co=256

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
colorscheme koehler
syntax on

" tab completion
set wildmode=longest,list,full
set wildmenu

set ignorecase
set smartcase " vim so smart

set title
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername}\ Vim

" NERDTree thing
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:powerline_pycmd = 'py3'
