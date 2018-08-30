" vim configuration file

" Don't try to be vi compatible
set nocompatible

" Alt-j/k deletes blank line below/above, and Ctrl-j/k inserts.
nnoremap <silent><A-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

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

