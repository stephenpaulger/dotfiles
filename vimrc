" =============================================================================
" important
" =============================================================================
set nocompatible            " Disable vi compatible mode
set pastetoggle=<C-B>       " Make F3 toggle paste mode

" =============================================================================
" moving around, searching and patterns
" =============================================================================
set incsearch               " Incremental search
set ignorecase              " Ignore case when searching
set smartcase               " ...unless upper case is in search term
set tags=~/mytags

" =============================================================================
" displaying text
" =============================================================================
set scrolloff=3             " Number of lines to show around cursor

" =============================================================================
" syntax, highlighting and spelling
" =============================================================================
filetype plugin on
filetype indent on

augroup PO
    autocmd FileType po compiler po
augroup END

set hlsearch                " Highlight searches
syntax on                   " Turn on syntax highlighting

" Ctrl-L to clear search highlight
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" =============================================================================
" messages and info
" =============================================================================
set ruler                   " Show cursor position in status line
set showmode                " Show the editor mode

" =============================================================================
" editing text
" =============================================================================
set backspace=indent,eol,start  " backspace in an intuitive way

" =============================================================================
" tabs and indenting
" =============================================================================
set shiftwidth=4            " Number of spaces to use for indenting
set tabstop=4               " Number of spaces to represent tab
set expandtab               " Convert tabs to spaces
set autoindent              " Enabled auto-indentation

" =============================================================================
" netrw
" =============================================================================
let g:netrw_list_hide='.*\.pyc$' " Hide pyc files

" =============================================================================
" GVIM
" =============================================================================
if has('gui_running')
    set guioptions-=T
    colorscheme desert
endif

" =============================================================================
" XML
" =============================================================================
ru macros/matchit.vim

" =============================================================================
" View Restore
" =============================================================================
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" =============================================================================
" Encryption
" =============================================================================
set cryptmethod=blowfish2
