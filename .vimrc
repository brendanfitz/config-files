set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all Vundle plugins here
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
" BFNOTE: check out nerdtree and vim-fugitive and powerline
"Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltlog/powerline', {'rtp': 'powerline/bindings/vim/'}

" all Plugins must be added before the following line
call vundle#end()

" pathogen
execute pathogen#infect()

syntax on
filetype plugin indent on 

" define leader and localeader
let mapleader = ","
let maplocalleader = ","

" clear line and insert - TODO: currently using c for comments
"nnoremap <leader>c ddO

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
nnoremap <leader>vs :source $MYVIMRC<cr>

" TODO: add single keystroke mapping for switching between splits

" Enable folding and remap folding key
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Line numbers
set number

" add proper PEP 8 indentation
augroup pep8indents
    autocmd!
    autocmd BufNewFile,BufRead *.py :set tabstop=4
    autocmd BufNewFile,BufRead *.py :set softtabstop=4
    autocmd BufNewFile,BufRead *.py :set shiftwidth=4
    autocmd BufNewFile,BufRead *.py :set textwidth=79
    autocmd BufNewFile,BufRead *.py :set expandtab
    autocmd BufNewFile,BufRead *.py :set autoindent
    autocmd BufNewFile,BufRead *.py :set fileformat=unix
augroup END

" full stack development
augroup fullstack
    autocmd!
    autocmd BufNewFile,BufRead *.js,*.html,*.css :set tabstop=2
    autocmd BufNewFile,BufRead *.js,*.html,*.css :set softtabstop=2
    autocmd BufNewFile,BufRead *.js,*.html,*.css :set shiftwidth=2
augroup END

" The below is from Learn Vim Script the Hard Way
" BF NOTE: figure out what this does
"augroup file_type_html
"    autocmd!
"    autocmd Filetype html nnoremap <buffer> <localeader>f Vatzf
"augroup END

" flag white space
"au BufNewFile,BufRead *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

let python_highlight_all=1

autocmd Filetype javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd Filetype python     nnoremap <buffer> <localleader>c I#<esc>

autocmd Filetype javascript :iabbrev <buffer> iff if ()<left>
autocmd Filetype python     :iabbrev <buffer> iff if:<left>

" Status line
set laststatus=2
set statusline=%t "tail of filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h "help file flag
set statusline+=%m "modified flag
set statusline+=%r "read only flag
set statusline+=%y "filetype
set statusline+=%= "left/right separator
set statusline+=%c, "cursor column/line length
set statusline+=%l/%L "cursor line/total lines
set statusline+=\ %P "percent through file

" Check box fun
nnoremap <leader>[ o[ ]    
nnoremap <leader>{ o[ ]    ( )    
nnoremap <leader>] 0lrx<esc>    

" vim-slime
let g:slime_target="tmux"
let g:slime_python_ipython=1
let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}
let g:slime_no_mappings=1
let g:slime_dont_ask_default=1
xmap <leader>s <Plug>SlimeRegionSend
nmap <leader>s <Plug>SlimeParagraphSend
nmap <leader>v <Plug>SlimeConfig

" highlight characters past the 80 per line
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v.\+/
