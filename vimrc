set nocompatible              " be iMproved, required
filetype off                  " required

colorscheme jelleybeans
set ic                  " Set search to ignore case
set laststatus=2
set number              " Show absolute line numbers
set relativenumber      " Show relatve line numbers
set tabstop=2 shiftwidth=2 expandtab " Replace tabs with double spaces
set splitright " Open new split views to the right
set splitbelow " Open new split views to the right

"set clipboard=unnamed   " Share clipboard with OS
"let g:airline_powerline_fonts = 1
let g:deoplete#enable_at_startup = 1

" Using vim-plug
" Use the follwing command to re-install
" curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

" Core bundles
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'mkitt/tabline.vim'
Plug 'terryma/vim-smooth-scroll'
Plug 'vim-scripts/a.vim'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/syntastic'
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

" Add plugins to &runtimepath
call plug#end()

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
" Temporarly disable arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap h <NOP>
noremap j <NOP>
noremap k <NOP>
noremap l <NOP>
" Copy/Pasting  mapping
nnoremap S "_diwP
vnoremap S "_d"0P

" vim-commentary
autocmd FileType cmake setlocal commentstring=#\ %s

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_include_dirs = [ 'WebRTC/WebRTC_src/src/third_party/boringssl/src/include', 'include' ]

