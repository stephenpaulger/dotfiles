" =============================================================================
" vim-plug plugins
" =============================================================================
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-commentary'
Plug 'vimwiki/vimwiki'
Plug 'python-mode/python-mode'
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'fatih/vim-go'
call plug#end()

" =============================================================================
" important
" =============================================================================
set nocompatible            " Disable vi compatible mode
set pastetoggle=<C-B>       " Make Ctrl+B toggle paste mode

" ============================================================================= 
" settings for vim-commentary
" ============================================================================= 
autocmd FileType terraform setlocal commentstring=#%s

" =============================================================================
" moving around, searching and patterns
" =============================================================================
set ignorecase              " Ignore case when searching
set smartcase               " ...unless upper case is in search term
set tags=./tags;,.git/tags;

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

set background=dark
let g:solarized_termtrans = 1
colorscheme solarized

" Turn off scratch preview
set completeopt-=preview

" =============================================================================
" messages and info
" =============================================================================
set showmode                " Show the editor mode

" =============================================================================
" tabs and indenting
" =============================================================================
set shiftwidth=4            " Number of spaces to use for indenting
set tabstop=4               " Number of spaces to represent tab
set expandtab               " Convert tabs to spaces

" =============================================================================
" netrw
" =============================================================================
let g:netrw_list_hide='.*\.pyc$' " Hide pyc files

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


" =============================================================================
" Python
" =============================================================================
let g:pymode_lint_ignore="E501"
