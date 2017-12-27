execute pathogen#infect()
syntax on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set backspace=indent,eol,start
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
  :autocmd BufEnter * lcd %:p:h

set relativenumber number

command E Explore
