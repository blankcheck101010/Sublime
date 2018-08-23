" vim configuration file

" Don't try to be vi compatible
set nocompatible

" Use case insensitive search, except when using capital letters
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Encoding
set encoding=utf-8

" Blink cursor on error instead of beeping (grr)
set visualbell

" Show file stats
set ruler

" Show line numbers
set number

" Turn on syntax highlighting
syntax on

