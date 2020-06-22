" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Neobundle init
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

" Plugins install
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
call neobundle#end()

NeoBundleCheck " prompt install 'missed' plugins on startup

" General settings
syntax enable
filetype plugin indent on
set path+=**
set wildmenu 			        " Visual autocomplete for command menu
set relativenumber		        " Show relative line numbers
set number			            " Show absolute current line number
set numberwidth=3       		" Line cumbers column width
set noswapfile                  " Don't use swapfile
set nobackup                	" Don't create backup files
set encoding=utf-8              " Set default encoding to UTF-8
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive
set autowrite                   " Automatically save before :next, :make etc.
set autoindent
set tabstop=4 shiftwidth=4 expandtab
set gdefault            	    " Use 'g' flag by default with :s/foo/bar/.
set splitbelow                  " Horizontal split below current.
set splitright                  " Vertical split to right of current.
set hidden
set clipboard=unnamed           " Clipboard sharing w/ os
set mouse=a                     " Select text and move between panes w/ mouse
if !&scrolloff
  set scrolloff=3               " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5           " Show next 5 columns while side-scrolling.
endif
if maparg('<C-L>', 'n') ==# ''	" Use <C-L> to clear the highlighting of :set hlsearch.
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Theme, fonts and colors
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox


" Nerdtree config
map <C-n> :NERDTreeToggle<CR>

" Gitgutter config
set updatetime=500 " Update modification column every 500ms
autocmd VimEnter * GitGutterLineNrHighlightsEnable
let g:gitgutter_max_signs = -1

" Airline configuration and theme
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_section_c = '%{getcwd()}'                " in section C of the status line display the CWD
let g:airline#extensions#tabline#enabled = 1           " enable airline tabline
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right
let g:airline#extensions#tabline#show_buffers = 1      " dont show buffers in the tabline
let g:airline#extensions#tabline#buffer_nr_show = 1    " show buffer numbers
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline
let g:airline#extensions#tabline#show_tab_nr = 1       " disable tab numbers
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline

" Leader keys
let mapleader='z'
let maplocalleader='\'

" Buffers keys mapping
nmap <leader>l :bnext<CR>| " Move to the next buffer
nmap <leader>h :bprevious<CR>| " Move to the previous buffer
nmap <leader>bq :bp <BAR> bd #<CR>| " Close the current buffer and move to the previous one
nmap <leader>bl :ls<CR>| " Show all open buffers and their status
