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

set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set background=light
set encoding=utf-8
set colorcolumn=81
set hlsearch
set scrolloff=5

" lhs comments
map ,# :s/^/#/<CR>:nohlsearch<CR>
map ,/ :s/^/\/\//<CR>:nohlsearch<CR>
map ,> :s/^/> /<CR>:nohlsearch<CR>
map ," :s/^/\"/<CR>:nohlsearch<CR>
map ,% :s/^/%/<CR>:nohlsearch<CR>
map ,! :s/^/!/<CR>:nohlsearch<CR>
map ,; :s/^/;/<CR>:nohlsearch<CR>
map ,- :s/^/--/<CR>:nohlsearch<CR>
map ,c :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>:nohlsearch<CR>
" wrapping comments
map ,* :s/^\(.*\)$/\/\* \1 \*\//<CR>:nohlsearch<CR>
map ,( :s/^\(.*\)$/\(\* \1 \*\)/<CR>:nohlsearch<CR>
map ,< :s/^\(.*\)$/<!-- \1 -->/<CR>:nohlsearch<CR>
map ,d :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<CR>:nohlsearch<CR>

" enable Backspace
set bs=2
syntax on
set ruler
set cindent

" highlight unwanted whitespace
highlight ExtraWhitespace ctermbg=darkred guibg=darkred
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Searching multiple phrases at the same time
nmap ,m :Search 
nmap ,r :SearchReset<CR>

" switch between windows using <C-l><digit>
let i = 1
while i <= 9
  execute 'nnoremap <C-l>' . i . ' :' . i . 'wincmd w<CR>'
  execute 'inoremap <C-l>' . i . ' <Esc>:' . i . 'wincmd w<CR>'
  execute 'vnoremap <C-l>' . i . ' :' . i . 'wincmd w<CR>'
  let i = i + 1
endwhile

map ,s :call CurtineIncSw()<CR>
map ,o :FZF<CR>
