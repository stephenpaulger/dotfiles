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


" == Python =====================================
" setting the makeprg to pep8 means I can quickly fix formatting errors
" by type :make and :cope
au FileType python set makeprg=pep8\ --ignore=E501\ %

" number is for line numbering
au FileType python set number

" HilightCoverage plugin highlights lines lacking test coverage
" au FileType python HilightCoverage

" Add format option flags (see |fo-table|)
au FileType python set fo+=croq

" Map F5 to execute the current file (save first)
au FileType python map <F5> :!python %<cr>

" Add site-packages to search path, useful for gf
set path+=/usr/local/lib/python2.7/site-packages
