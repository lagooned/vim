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
set notimeout

" leader
map <Space> <Leader>

" shell
map <Leader>` :sh<Enter>
map <Leader>! :Shell<Space>

" config
map <Leader>cc :source $MYVIMRC<Enter>
map <Leader>ci :e $MYVIMRC<Enter>

" file
map <Leader>ff :e<Space>
map <Leader>fz :e **/*
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
map <Leader>pP :!git push<Space>
map <Leader>pp :e ~/code<Enter>
map <Leader>pf :!git fetch<Space>
map <Leader>pdc :!git diff --cached<Enter>
map <Leader>pdd :!git diff<Enter>
map <Leader>pap :!git add --patch<Enter>
map <Leader>pr :!git rebase<Space>
map <Leader>pg :Shell git grep -nIi<Space>
map <Leader>pca :!git commit --verbose --amend --reset-author<Enter>
map <Leader>pcc :!git commit --verbose<Enter>

" netrw
nmap - :o .<Enter>

" quit
map <Leader>qq :q<Enter>
map <Leader>qQ :qa!<Enter>
map <Leader>qc :cq<Enter>

" shell cmd output
function! s:RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
     if part[0] =~ '\v[%#<]'
        let expanded_part = fnameescape(expand(part))
        let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     endif
  endfor
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, '$: ' .expanded_cmdline)
  call setline(2,substitute(getline(1),'.','-','g'))
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
  1
endfunction
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
