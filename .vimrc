execute pathogen#infect()
let g:syntastic_python_checkers = ['flake8', 'python', 'pyflakes','pep8']
let g:synstastic_sass_checkers = ['sass']
let g:syntastic_scala_checkers = ['scalastyle', 'scalac']
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_error_symbol = '!!'
let g:syntastic_warning_symbol = 'WW'



set mouse=a
set foldmethod=indent
set foldlevel=99
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set completeopt=menuone,longest,preview
set statusline+=%f
set laststatus=2
set number
set shell=/bin/bash
set backspace=indent,eol,start

au FileType python set omnifunc=pythoncomplete#Complete
colo elflord
filetype plugin indent on    " enable loading indent file for filetype
syntax on
