syntax on
set hidden
" no sound effect when going to the end of the line
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
"expandtab converts tab character into spaces
set expandtab
"smartindent vim is going to try the best to indent for u
set smartindent
"set nu = turn on line numbers for us
set nu
" nowrap continue on the line forewer without wrapping 
set nowrap
"smartcase will do case sensitive search until we put in a CAPITAL LETTER
set smartcase
"no swapfiles throughout the projects
set noswapfile
"no backup, but...
set nobackup
"becuase we have no backup we create undo directory
set undodir=~/.vim/undodir
"undofile will create a file in undodir for every file we're working on
set undofile
"incremental search - we get results while we search
set incsearch 
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
"Plugin manager starts with cal call plug#begin('~/.vim/plugged') and ends with call plug#end()
set runtimepath^=~/.vim/bundle/ctrlp.vim

call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
"Plug 'ctrlpvim/ctrlp.vim.git'

call plug#end()
colorscheme gruvbox
set background=dark

if &term =~ "xterm"
  " 256 colors
  let &t_Co = 256
  " restore screen after quitting
  let &t_ti = "\<Esc>7\<Esc>[r\<Esc>[?47h"
  let &t_te = "\<Esc>[?47l\<Esc>8"
  if has("terminfo")
    let &t_Sf = "\<Esc>[3%p1%dm"
    let &t_Sb = "\<Esc>[4%p1%dm"
  else
    let &t_Sf = "\<Esc>[3%dm"
    let &t_Sb = "\<Esc>[4%dm"
  endif
endif
