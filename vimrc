"
"       ██╗███████╗███╗   ██╗ ██████╗ ██╗     ███████╗██████╗     ██╗   ██╗██╗███╗   ███╗
"       ██║██╔════╝████╗  ██║██╔════╝ ██║     ██╔════╝██╔══██╗    ██║   ██║██║████╗ ████║
"       ██║█████╗  ██╔██╗ ██║██║  ███╗██║     █████╗  ██████╔╝    ██║   ██║██║██╔████╔██║
"  ██   ██║██╔══╝  ██║╚██╗██║██║   ██║██║     ██╔══╝  ██╔══██╗    ╚██╗ ██╔╝██║██║╚██╔╝██║
"  ╚█████╔╝███████╗██║ ╚████║╚██████╔╝███████╗███████╗██║  ██║     ╚████╔╝ ██║██║ ╚═╝ ██║
"   ╚════╝ ╚══════╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝      ╚═══╝  ╚═╝╚═╝     ╚═╝
"

" no vi compatiblity
set nocp

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
set ic
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
set autochdir
set listchars=tab:>\ ,eol:$,space:.

" leader
map <Space> <Leader>

" config
map <Leader>cc :source $MYVIMRC<Enter>
map <Leader>ci :e $MYVIMRC<Enter>

" file
map <Leader>ff :e **/
map <Leader>fs :w<Enter>
map <Leader>fW :x<Enter>
map <Leader>fw :w<Space>

" toggles
map <Leader>tt :set wrap!<Enter>
map <Leader>tw :set list!<Enter>
map <Leader>tl :set relativenumber!<Enter>

" window
map <Leader>ww <C-w><C-w>
map <Leader>wc <C-w>c
map <Leader>wo <C-w>o
map <Leader>ws <C-w>s
map <Leader>wv <C-w>v
map <Leader>wh <C-w>h
map <Leader>wl <C-w>l
map <Leader>wj <C-w>j
map <Leader>wk <C-w>k

" git
map <Leader>ps :!git status<Enter>
map <Leader>pp :!git push<Space>
map <Leader>pf :!git fetch<Space>
map <Leader>pdc :!git diff --cached<Enter>
map <Leader>pdd :!git diff<Enter>
map <Leader>pap :!git add --patch<Enter>
map <Leader>pr :!git rebase<Space>
map <Leader>pg :!git grep<Space>

" netrw
nmap - :o .<Enter>

" quit
map <Leader>qq :q<Enter>
map <Leader>qQ :qa!<Enter>
map <Leader>qc :cq<Enter>
