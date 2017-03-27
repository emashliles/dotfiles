call plug#begin('~/.vim/plugged')

Plug 'https://github.com/elixir-lang/vim-elixir.git'
Plug 'scrooloose/nerdtree'
Plug 'luochen1990/rainbow'
Plug 'kovisoft/paredit', { 'for': ['clojure', 'scheme'] }

call plug#end()

syntax on                         " show syntax highlighting
filetype plugin indent on
set backspace=indent,eol,start    " respect backspace
set autoindent                    " set auto indent
set ts=2                          " set indent to 2 spaces
set shiftwidth=2
set expandtab                     " use spaces, not tab characters

let mapleader = "\ "
let g:rainbow_active = 1

nnoremap <silent> <leader>f :NERDTreeToggle<CR>
nnoremap <silent> <leader>F :NERDTreeFind<CR>

nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z<cr>:w<cr>
