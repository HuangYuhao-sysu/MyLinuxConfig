
# -------------------------------------------------- #
#                                                    #
#                                                    #
#                 (Yuhao .bashrc)                    #
#                                                    #
#               Copyright (c) 2023                   #
#               All Rights Reserved.                 #
#                                                    #
#                                /\_/\               #
#            Designed by Yuhao  ( o.o )              #
#                                > ^ <               #
#                                                    #
# -------------------------------------------------- #

# ------------------------- #
# Set environment variables #
# ------------------------- #
#setenv http_proxy http://127.0.0.1:38457
#setenv https_proxy http://127.0.0.1:38457

# ------------------------- #
# --Aliases and Shortcuts-- #
# ------------------------- #
alias g='gvim'
alias v='vim'
alias q='cd ..'
alias qq='cd ../..'
alias ll='ls -l'
alias la='ls -la | more'
alias ld='ls -la | grep ^d'
alias lt='ls -lat | more'
alias h='history 50 | more'
alias sc='source ~/.bashrc'
alias cs='vim ~/.bashrc'
alias gst='git status -uno'
alias gco='git checkout'
alias gl='git log --decorate'
alias gpush='git push origin main'
alias gpull='git pull --rebase'
alias desk='cd ~/Desktop'
alias home='cd ~'
alias vimrc='vim ~/.vimrc'
alias gvimrc='gvim ~/.vimrc'
alias vimdir='cd ~/.vim'
alias fast='sudo ~/Desktop/fastgithub_linux-x64/fastgithub'
alias snip='cd ~/.vim/bundle/vim-snippets/snippets/'

# ------------------------- #
# ---Customize the prompt-- #
# ------------------------- #

# ------------------------- #
# ----Define functions----- #
# ------------------------- #
cd() {
    builtin cd $@
    ls -l
}
