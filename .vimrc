set vb
set t_vb=
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/matchit' 
Plugin 'solarized'
Plugin 'shengping/vim-ctags'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'shengping/vim-systemverilog'
Plugin 'mtdl9/vim-log-highlighting'
Plugin 'thinca/vim-visualstar'
Plugin 'triglav/vim-visual-increment'
call vundle#end()            " required

filetype plugin indent on    " required

set nu
set hlsearch
set incsearch
set autoindent
set expandtab
set softtabstop=2
set tabstop=2

" colorscheme
set background=light
color solarized

" configuration for vim-ctags
let g:languages=["C","systemverilog"]
"let g:languages=["systemverilog"]
"let g:languages=[]
let g:files_directory=["/home/turingbird/uvm_1.2"]
let g:vim_ctags_auto_gen=1

set iskeyword+=`
noremap g] :execute "tj ".expand("<cword>")<CR>
