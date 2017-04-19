set backspace=indent,eol,start
execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set hidden
set guifont=Menlo\ Regular:h13

" set colour scheme
set background=dark
colorscheme solarized

" NERDTree config
map <F5> :NERDTreeToggle<CR>
let NERDTreeIgnore=['^__py.*']

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
