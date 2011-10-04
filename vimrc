filetype plugin on
filetype indent on

augroup PO
    autocmd FileType po compiler po
augroup END

" == netrw ======================================
" Hide pyc files
let g:netrw_list_hide='.*\.pyc$' 

" == Editing ====================================
syntax on
set ruler
set backspace=2
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set pastetoggle=<F3>
set showmode

" == Search =====================================
set ignorecase
set smartcase
set incsearch
set hlsearch

" == Position Restore ============================
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
