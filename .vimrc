call pathogen#infect()
call pathogen#helptags()

let g:syntastic_python_checkers=['pyflakes']
let g:pyflakes_use_quickfix = 1
let g:pep8_map='<leader>8'
let g:SuperTabDefaultCompletionType = "context"

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

set foldmethod=indent
set foldlevel=99
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set smarttab
set expandtab
set smartindent
set completeopt=menuone,longest,preview
set statusline+=%{fugitive#statusline()}
set laststatus=2
set number

au FileType python set omnifunc=pythoncomplete#Complete
colo elflord
filetype plugin indent on    " enable loading indent file for filetype
highlight LineNr ctermfg=gray ctermbg=darkgray
syntax on

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

