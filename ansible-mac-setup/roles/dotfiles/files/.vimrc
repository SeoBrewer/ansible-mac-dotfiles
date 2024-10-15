" Configuración básica
set nocompatible
filetype plugin indent on
syntax on
set number
set relativenumber
set incsearch
set hlsearch
set ignorecase
set smartcase
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set wrap
set linebreak
set backspace=indent,eol,start

" Mapeos útiles
let mapleader = ","
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Plugins (usando vim-plug, asegúrate de instalarlo primero)
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Configuración de NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Tema de color
colorscheme desert

