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

" Color Plugins
Plugin 'vilight.vim'

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
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


"--------------------------------------------------------------------------------
" General Options
"================================================================================
" Config Settings
syntax on               " Color syntax highlighting
set nu                  " Show line numbers
set ru                  " Show line and column number of cursor pos
set ch=2                " Make command line 1 line high
set mousehide           " Hide mouse when typing text
set wrapscan            " Wrap search
set nowrap              " No line wrap
set ignorecase          " Ignore case when searching
set smartcase           " If search keyword has capital letters case-sensitive
set hlsearch            " Highlight search results
set incsearch           " Jump to search result as it is typed
set showcmd             " Display incomplete comand in lower right corner
set wildmenu            " Wild menu
set backspace=2         " Working backspace
set scrolloff=10        " Keep at least 5 lines around cursor

" Map the next and previous buffer commands
noremap <S-Tab> :bn<cr> 
noremap <C-S-Tab> :bp<cr>

" Remap the ; to : in normal mode for easier commands
nnoremap ; :

" Clear Search
nmap <silent> ,/ :nohlsearch<CR>

" Tab Settings
set autoindent     " Set the cursor as same indent line as above
set smartindent    " Try to be smart about indenting (C-style)
set expandtab      " Expand tabs to spaces
set shiftwidth=4   " Amount of spaces for each step of (auto)indent
set softtabstop=4  " Set virtual tab stop
set tabstop=8      " For proper display of files with tabs
set shiftround     " Always round indents to multiple of shiftwidth
set copyindent     " Use existing indents for new indents
set preserveindent " Save as much indent structure as possible

" Disable Auto Comment
au FileType * setlocal formatoptions-=cro

" Set color scheme
if has('gui_running')
    colorscheme evening
else
    colorscheme vilight
endif

" Highlight Column 100
if (exists('+colorcolumn'))
    set colorcolumn=100
    highlight colorcolumn ctermbg=8 guibg=gray16
endif

" Backup
set backup                   " Enable backup files
set backupdir=~/.vim/backup  " Set directory for backup files
set directory=~/.vim/tmp     " Set directory for temp swp files
