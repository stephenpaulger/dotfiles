set nocompatible

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
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" == GVIM =======================================
if has('gui_running')
    set guioptions-=T
    colorscheme desert
endif

" == XML ========================================
ru macros/matchit.vim

" == View Restore ===========================
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview
