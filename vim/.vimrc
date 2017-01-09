set backspace=indent,eol,start
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on
set number
set hidden
set guifont=Menlo\ Regular:h13

let mapleader="\<Space>"

" set colour scheme
set background=dark
colorscheme solarized

" NERDTree config
map <F5> :NERDTreeToggle<CR>
let NERDTreeIgnore=['^__py.*']


let g:jedi#force_py_version = 3
