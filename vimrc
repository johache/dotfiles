set nocompatible              " be iMproved, required
filetype off                  " required

colorscheme jelleybeans
set laststatus=2
set number              " Show absolute line numbers
set relativenumber      " Show relatve line numbers
set tabstop=2 shiftwidth=2 expandtab " Replace tabs with double spaces
"set clipboard=unnamed   " Share clipboard with OS
"let g:airline_powerline_fonts = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Core bundles
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mkitt/tabline.vim'

call vundle#end()            " required
filetype plugin indent on    " required

"" Keymapping
nnoremap <F5> :NERDTreeToggle<CR>

