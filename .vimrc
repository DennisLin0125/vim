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
set scrolloff=3



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
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'ggreer/the_silver_searcher'
Plug 'tomtom/tcomment_vim'
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
call plug#end()

let NERDTreeMinimalUI = 1
let NERDTreeChDirMode = 2

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|tmp$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,less EmmetInstall
autocmd FileType html,css,scss,less imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

inoremap jj <Esc>
nnoremap <silent> <F2> :NERDTreeToggle<Enter>
