" Much of this lifted from 'A Good Vimrc'
" http://dougblack.io/words/a-good-vimrc.html
syntax on           " syntax highlighting

colorscheme desert

set tabstop=2       " 2 visual spaces per tab char
set softtabstop=2   " 2 spaces are inserted on <TAB> keypress
set shiftwidth=2    " 2 spaces indentation for syntax
set expandtab       " use spaces, not tabs!
set smartindent     " use best guess indentation

set guifont=Fira\ Mono\ 8

set number          " show line numbers
set mouse=a         " enable mouse support
set cursorline      " current line highlighting; not sure if annoying
set wildmenu        " visual autocomplete for commands, woot!

set lazyredraw      " redraw only if necessary
set showmatch       " highlight matching brackets

let mapleader=","   " use comma as leader

set incsearch       " search as characters are entered
set hlsearch        " highlight search matches
" so you can turn off search highlight when you're done
nnoremap <leader><space> :nohlsearch<CR>

" It's Vundle time!!
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required

Plugin 'scrooloose/nerdtree'  " NERDTree file tree explorer

Plugin 'rking/ag.vim'         " 'The Silver Searcher'
" Use ,a to search very quickly
nnoremap <leader>a :Ag

Plugin 'kien/ctrlp.vim'       " CtrlP fuzzy file finder
" Use `ag` to make CtrlP faster
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

Plugin 'derekwyatt/vim-scala' " Scala language support

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
