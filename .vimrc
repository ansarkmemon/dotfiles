set nocompatible
filetype off
execute pathogen#infect()

set rtp+=~/.vim/bundle/Vundle.vim

set bs=2
set ts=4
set sw=4
set number

" shows row and column number at the bottom
set ruler

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'hzchirs/vim-material'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin indent on
syntax on

color dracula

" let g:material_style='palenight'
" set background=dark
" colorscheme vim-material

" Key Mappings

" Use Ctrl + n to open nerdtree
map <C-n> :NERDTreeToggle<CR>

" Move lines up and down using Ctrl + j / Ctrl + k
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
