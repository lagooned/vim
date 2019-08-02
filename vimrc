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
map <Leader>pf :CtrlP<Enter>
