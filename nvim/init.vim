call plug#begin('~/.config/nvim/bundle')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Raimondi/delimitMate'
Plug 'altercation/vim-colors-solarized'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

call plug#end()

" vim configuration file location
" cd ~/.config/nvim/init.vim

" inclusive - the last character of the selection is included in an operation
set sel=inclusive

" This creates your prefix key. Call using <leader>
:let mapleader = "C-e"

" Don't try to be vi compatible
set nocompatible

" Enable folding
" set foldmethod=indent
" set foldlevel=99

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

" Delete spaces before line with ctrl-h
" nnoremap <silent><C-h> :s/\s\+$//<CR>
nnoremap <silent><C-h> :s/\s\+$//<CR> :<Esc>$

" Split line at current cursor with Shift+k
:nnoremap K i<CR><Esc>

" Ctrl-n/j inserts blank line below/above
nnoremap <silent><C-n> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-j> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Ctrl-m/k deletes blank line below/above (if exists)
nnoremap <silent><C-m> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>

" Type a space while in Normal Mode
nnoremap <Space> i<Space><Right><ESC>

" right delete in input mode
inoremap <C-d> <Del>

" remap how to enter normal mode while in terminal mode
tnoremap <Esc> <C-\><C-n>
