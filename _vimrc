"--------------------------------------------------------------------------------
" Vundle Setup
"================================================================================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/vundle'


"--------------------------------------------------------------------------------
" Plugins
"================================================================================
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'


"--------------------------------------------------------------------------------
" Vundle End
"================================================================================
" All plugins must be above the following line
call vundle#end()
filetype plugin indent on


"--------------------------------------------------------------------------------
" Plugin Options
"================================================================================

" Airline Options
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme="simple"
set laststatus=2


" Syntastic Options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"--------------------------------------------------------------------------------
" General Options
"================================================================================
" Visual Settings
set nu              "show line numbers
set guioptions+=b   "enable bottom scrollbar
"set guioptions-=m  "remove menu bar
"set guioptions-=T  "remove toolbar

" Map the next and previous buffer commands
map <S-Tab> :bn<cr> 
map <C-S-Tab> :bp<cr>

" Tab Settings
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
autocmd FileType * setlocal smartindent tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Disable Auto Comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
