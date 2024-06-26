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

set nocompatible                        " be iMproved, required
filetype off                            " required
set rtp+=~/.vim/bundle/Vundle.vim       " set the runtime path to include Vundle and initialize

" Vundle
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'              " Let Vundle manage Vundle, required.
Plugin 'scrooloose/nerdtree'               " The NERD tree.
Plugin 'morhetz/gruvbox'                   " Retro groove color scheme for vim.
Plugin 'yggdroot/indentline'               " A vim plugin to display the indention levels with thin vertical lines.
Plugin 'tpope/vim-surround'                " Surround.vim: quoting/parenthesizing made simple
Plugin 'luochen1990/rainbow'               " Rainbow Parentheses Improved.
Plugin 'MarcWeber/vim-addon-mw-utils'      " For snipmate.
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'                " Vim-snipmate default snippets (Previously snipmate-snippets).
Plugin 'vhda/verilog_systemverilog.vim'    " Verilog and SystemVerilog syntax plugin.
Plugin 'vim-airline/vim-airline'           " lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline-themes'    " Themes for airline.
Plugin 'junegunn/vim-easy-align'           " Align
Plugin 'antoinemadec/vim-verilog-instance' " verilog instance
"Plugin 'dense-analysis/ale'               " Check syntax in Vim asynchronously and fix files.
call vundle#end()                          " required

filetype plugin indent on                  " required

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
" -----Plugin Settings----- "
" ------------------------- "

let g:rainbow_active=1                          " 0 if you want to enable it later via :RainbowToggle
let g:snipMate={ 'snippet_version' : 1 }        " The legacy parser, version 0, is deprecated.
let g:airline_theme='solarized'                 " Set airline theme.
let g:airline#extensions#tabline#enabled=1      " Enable Smarter tab line.

let b:match_words =
    \ '\<begin\>:\<end\>,' .
    \ '\<case\>\|\<casex\>\|\<casez\>:\<endcase\>,' .
    \ '\<module\>:\<endmodule\>,' .
    \ '\<if\>:\<else if\>:\<else\>,' .
    \ '\<function\>:\<endfunction\>,' .
    \ '`ifdef\>:`else\>:`endif\>,' .
    \ '\<task\>:\<endtask\>,' .
    \ '\<program\>:\<endprogram\>,' .
    \ '\<specify\>:\<endspecify\>'

" ------------------------- "
" ---Theme & Appearance---- "
" ------------------------- "

set background=dark
let g:gruvbox_contrast_dark  = "soft"
colorscheme gruvbox                     " Set color scheme.
set guifont=Monospace\ 12
set colorcolumn=80

" ------------------------- "
" ---Bindings & Commands--- "
" ------------------------- "

nnoremap <F4> :NERDTreeToggle<CR>
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
nnoremap H 0
nnoremap L $
vnoremap H 0
vnoremap L $
inoremap jj <ESC><Right>

" ------------------------- "
" ----File Type Settings--- "
" ------------------------- "

au BufRead,BufNewFile *.sv*.v*.vh*.svh*.sva setf verilog_systemverilog
au BufRead,BufNewFile *yml setf yaml

au FileType verilog_systemverilog call VerilogMappings()
au FileType python call PythonMappings()

" ------------------------- "
" -----Other Settings------ "
" ------------------------- "

au VimEnter * :NERDTreeToggle | call feedkeys("\<C-W>\<Right>")             " Open NERDTree and goto right window when enter.
au BufWritePre * :%s/\s+$//e                                                " Remove trailing whitespace when write file.
set foldmethod=indent                                                       " Set fold.
set foldlevel=99

" ------------------------- "
" ------My Functions------- "
" ------------------------- "
function! VerilogMappings()
endfunction

function! PythonMappings()
    inoremap ' ''<left>
endfunction

let g:easy_align_delimiters = {
\ '>': { 'pattern': '>>\|=>\|>' },
\ ',': { 'pattern': '[,]', 'stick_to_left': 0 },
\ ';': { 'pattern': '[;]', 'stick_to_left': 0 },
\ '/': { 'pattern': '//\+\|/\*\|\*/', 'delimiter_align': 'l', 'ignore_groups':   ['!Comment'] },
\ ']': { 'pattern': '[[\]]', 'left_margin':   0, 'right_margin':  0, 'stick_to_left': 0 },
\ ')': { 'pattern': '[()]', 'left_margin':   0, 'right_margin':  0, 'stick_to_left': 0 },
\ 'd': { 'pattern': ' \(\S\+\s*[;=]\)\@=', 'left_margin':  0, 'right_margin': 0 }
\ }

"easyalign
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
vmap <Enter> <Plug>(EasyAlign)
