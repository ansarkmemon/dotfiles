set nocompatible
filetype off
execute pathogen#infect()

set rtp+=~/.vim/bundle/Vundle.vim

set bs=2
set ts=4
set sw=4
set number
set encoding=utf-8

set expandtab       "Use softtabstop spaces instead of tab characters for indentation
set shiftwidth=2    "Indent by 4 spaces when using >>, <<, == etc.
set softtabstop=2   "Indent by 4 spaces when pressing <TAB>

set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable

" shows row and column number at the bottom
set ruler
set nowrap

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
Plugin 'jparise/vim-graphql'
Plugin 'scrooloose/nerdtree'

call vundle#end()
" filetype plugin indent on
syntax on

color dracula

" let g:material_style='palenight'
" set background=dark
" colorscheme vim-material

" Key Mappings

" Use Ctrl + n to open nerdtree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0

" Move lines up and down using Ctrl + j / Ctrl + k

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Settings for Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

