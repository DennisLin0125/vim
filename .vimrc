" let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


set nu
set clipboard=unnamed
set hlsearch
set ignorecase
set smartcase
set cursorline
set noswapfile


set softtabstop=2
set shiftwidth=2
set expandtab
set showtabline=2
set splitbelow
set splitright
set incsearch
set linebreak
set noshowmode
set showcmd




" color
syntax on
colorscheme darkblue

" filetype
filetype on
filetype indent on
filetype plugin on

" plugin
call plug#begin('~/.vim/plugged')
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'powerline/powerline'
Plug 'powerline/fonts'
Plug 'wakatime/vim-wakatime'
call plug#end()




inoremap jj <Esc>
