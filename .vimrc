set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ericcurtin/CurtineIncSw.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
call vundle#end()

filetype plugin indent on

map ,s :call CurtineIncSw()<CR>
map ,o :FZF<CR>
