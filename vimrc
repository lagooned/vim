"
"       ██╗███████╗███╗   ██╗ ██████╗ ██╗     ███████╗██████╗     ██╗   ██╗██╗███╗   ███╗
"       ██║██╔════╝████╗  ██║██╔════╝ ██║     ██╔════╝██╔══██╗    ██║   ██║██║████╗ ████║
"       ██║█████╗  ██╔██╗ ██║██║  ███╗██║     █████╗  ██████╔╝    ██║   ██║██║██╔████╔██║
"  ██   ██║██╔══╝  ██║╚██╗██║██║   ██║██║     ██╔══╝  ██╔══██╗    ╚██╗ ██╔╝██║██║╚██╔╝██║
"  ╚█████╔╝███████╗██║ ╚████║╚██████╔╝███████╗███████╗██║  ██║     ╚████╔╝ ██║██║ ╚═╝ ██║
"   ╚════╝ ╚══════╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝      ╚═══╝  ╚═╝╚═╝     ╚═╝
"

" no vi compatiblity
set nocompatible

" load plugins
filetype off
packloadall

" better defaults
syntax on
filetype plugin indent on
set history=1000
set undolevels=1000
set showcmd
set incsearch
set ignorecase
set smartcase
set ruler
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nobackup
set matchpairs+=<:>
set relativenumber

" leader
map <Space> <Leader>

" config
map <Leader>cc :source $MYVIMRC<Enter>
map <Leader>ci :e $MYVIMRC<Enter>

" file
map <Leader>ff :CtrlP<Enter>
map <Leader>fs :w<Enter>
map <Leader>fw :w<Space>

" toggles
map <Leader>tt :set wrap!<Enter>

" window
map <Leader>wc <C-w>c
map <Leader>wo <C-w>o
map <Leader>ws <C-w>s
map <Leader>wv <C-w>v
map <Leader>wh <C-w>h
map <Leader>wl <C-w>l
map <Leader>wj <C-w>j
map <Leader>wk <C-w>k

" quit
map <Leader>qq :q<Enter>
map <Leader>qQ :qa!<Enter>
map <Leader>qc :cq<Enter>
