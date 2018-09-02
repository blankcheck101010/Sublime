" vim configuration file

" This creates your prefix key. Call using <leader>
:let mapleader = "C-e"

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

" Delete spaces before line with ctrl-e
nnoremap <silent><C-e> :s/\s\+$//<CR>

" Split line at current cursor with Shift+k
:nnoremap K i<CR><Esc>

" Ctrl-j/k inserts blank line below/above
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Ctrl-n/m deletes blank line below/above (if exists)
nnoremap <silent><C-n> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-m> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>

" Type a space while in Normal Mode
nnoremap <Space> i<Space><Right><ESC>

"surround visual text with paranthesis
xnoremap <leader>s xi()<Esc>P
