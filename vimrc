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
Plugin 'terryma/vim-smooth-scroll'

call vundle#end()            " required
filetype plugin indent on    " required

"" Keymapping
nnoremap <F5> :NERDTreeToggle<CR>
" Split view navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Tab navigation NO WORKING
nnoremap <C-1> 1gt
nnoremap <C-2> 2gt
nnoremap <C-3> 3gt
nnoremap <C-4> 4gt
nnoremap <C-5> 5gt
nnoremap <C-6> 6gt
nnoremap <C-7> 7gt
nnoremap <C-8> 8gt
nnoremap <C-9> 9gt
nnoremap <C-0> 10gt
" SmoothScroll remap
noremap <silent> <C-U> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <C-D> :call smooth_scroll#down(&scroll, 10, 2)<CR>
noremap <silent> <C-B> :call smooth_scroll#up(&scroll*2, 10, 4)<CR>
noremap <silent> <C-F> :call smooth_scroll#down(&scroll*2, 10, 4)<CR>
