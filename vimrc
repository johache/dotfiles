set nocompatible              " be iMproved, required
filetype off                  " required

colorscheme jelleybeans
set ic                  " Set search to ignore case
set laststatus=3
set number              " Show absolute line numbers
set relativenumber      " Show relatve line numbers
set tabstop=2 shiftwidth=2 expandtab " Replace tabs with double spaces
set splitright " Open new split views to the right
set splitbelow " Open new split views to the right
set cursorline " Highlights current line
au BufEnter /private/tmp/crontab.* setl backupcopy=yes
autocmd filetype crontab setlocal nobackup nowritebackup

" Reopen file at the place you last closed it
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" set clipboard=unnamed   " OS clipboard linked to * and + registers
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
nnoremap U :later<CR>
nnoremap <C-r> :so $MYVIMRC<CR>
" Split view navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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
" Ctag
" set tags=./tags;/ " vim to look up the file tree to find a ctag file
" nnoremap <M-]> :sp <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <C-W><C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" vim-commentary
autocmd FileType cmake setlocal commentstring=#\ %s
autocmd FileType cpp setlocal commentstring=//\ %s
autocmd FileType h setlocal commentstring=//\ %s
autocmd FileType dat setlocal commentstring=//\ %s
autocmd FileType pac setlocal commentstring=//\ %s

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

set mouse=a
