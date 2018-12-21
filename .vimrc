set nocompatible

filetype off

"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all Vundle plugins here
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
" BFNOTE: check out nerdtree and vim-fugitive and powerline
"Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltlog/powerline', {'rtp': 'powerline/bindings/vim/'}

" all Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" define leader
let mapleader = ","

" clear line and insert
nnoremap <leader>c ddO

" wrap quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" Split default
set splitbelow
set splitright

" Remap split navigation
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

" Edit my vimrc file and source it
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" TODO: add single keystroke mapping for switching between splits

" Enable folding and remap folding key
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Line numbers
set number

" add proper PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" full stack development
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" flag white space
"au BufNewFile,BufRead *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

let python_highlight_all=1
syntax on
