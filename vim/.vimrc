"""
" ViM Config "
"""

" Enable syntax
syntax enable
set number
" set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set clipboard=unnamedplus

" Show position 
set ruler

" Be smart about searching
set smartcase

" Highlight search result
set hlsearch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Indenting
set si "Smart indent
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

