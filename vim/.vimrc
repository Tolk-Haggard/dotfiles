set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
 
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'bufexplorer.zip'
" Git plugin not hosted on GitHub
Plugin 'fatih/vim-go'
Plugin 'jimenezrick/vimerl'
Plugin 'kien/ctrlp.vim'
" NERD Tree
Plugin 'scrooloose/nerdtree'
 
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on
set ai
set shiftwidth=2
set tabstop=2
set ruler
set number
set scrolloff=5                 " keep at least 5 lines above/below
set ttyfast                     " we have a fast terminal
set noerrorbells                " no beeps please
set visualbell
set shell=bash
set backup
set backupdir=~/.vim_backup     " keep backups from proliferating
:imap kj <Esc>
nmap <Leader>n :NERDTreeToggle<cr>
