
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif
" Plugins install
call plug#begin('~/.local/share/nvim/plugged')
"call plug#begin(stdpath('data') . '/plugged')
Plug 'morhetz/gruvbox'
call plug#end()
" General settings
syntax enable
filetype plugin indent on
set path+=**
set wildmenu                    " Visual autocomplete for command menu
set relativenumber              " Show relative line numbers
set number                      " Show absolute current line number
set numberwidth=3               " Line cumbers column width
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create backup files
set encoding=utf-8              " Set default encoding to UTF-8
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive
set autowrite                   " Automatically save before :next, :make etc.
set autoindent
set tabstop=4 shiftwidth=4 expandtab
set gdefault                    " Use 'g' flag by default with :s/foo/bar/.
set splitbelow                  " Horizontal split below current.
set splitright                  " Vertical split to right of current.
set hidden                      " Allow to hide buffers
set clipboard+=unnamedplus      " Clipboard sharing w/ os
set mouse=a                     " Select text and move between panes w/ mouse
set listchars=eol:¬,tab:\»\     " Set pretty eol sign
set list                        " Show whitespaces
if !&scrolloff
  set scrolloff=3               " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5           " Show next 5 columns while side-scrolling.
endif
if maparg('<C-L>', 'n') ==# ''  " Use <C-L> to clear the highlighting of :set hlsearch.
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Leader keys
nnoremap <SPACE> <Nop>
let mapleader=' '
let maplocalleader='\'
