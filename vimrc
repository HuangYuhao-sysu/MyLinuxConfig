" -------------------------------------------------- "
"                                                    "
"                                                    "
"                 (Yuhao .vimrc)                     "
"                                                    "
"               Copyright (c) 2023                   "
"               All Rights Reserved.                 "
"                                                    "
"                                /\_/\               "
"            Designed by Yuhao  ( o.o )              "
"                                > ^ <               "
"                                                    "
" -------------------------------------------------- "


" ------------------------- "
" -----Vundle Settings----- "
" ------------------------- "

set nocompatible                    " be iMproved, required
filetype off                        " required
set rtp+=~/.vim/bundle/Vundle.vim   " set the runtime path to include Vundle and initialize
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'       " let Vundle manage Vundle, required


call vundle#end()                   " required
filetype plugin indent on           " required

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" ------------------------- "
" ------Basic Settings----- "
" ------------------------- "

set encoding=utf-8                  " File coded with UTF-8.
set tabstop=4                       " 4 spaces represent a tab.
set shiftwidth=4                    " Set indent width to 4 spaces.
set expandtab                       " Expand tab to spaces.
set softtabstop=4                   " Backspace 4 spaces.
set autoindent                      " Indent consistent with last line.
set number                          " Show line number.
set cursorline                      " Show cursor line.
set cursorcolumn                    " Show cursor column.
set incsearch                       " Cursor jump when search matched word.

syntax enable                       " Syntax highlight on.

" ------------------------- "
" ----Plugin Management---- "
" ------------------------- "


" ------------------------- "
" ---Theme & Appearance---- "
" ------------------------- "

colorscheme desert                  " Set color scheme.


" ------------------------- "
" ---Bindings & Commands--- "
" ------------------------- "


" ------------------------- "
" ----File Type Settings--- "
" ------------------------- "

" ------------------------- "
" -----Other Settings------ "
" ------------------------- "