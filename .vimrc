set nocompatible
filetype off
execute pathogen#infect()

set rtp+=~/.vim/bundle/Vundle.vim

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


" Use Ctrl + n to open nerdtree
map <C-n> :NERDTreeToggle<CR>
