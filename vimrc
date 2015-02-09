set nocompatible
filetype on
syntax enable

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fireplace'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rainbow_parentheses.vim'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-surround'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'tomtom/tcomment_vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-dispatch'

filetype plugin indent on

set autoindent
set backspace=indent,eol,start
set colorcolumn=80
set encoding=utf-8
set hlsearch
set incsearch
set laststatus=2
set nobackup
set noswapfile
set number
set showmatch
set ttimeout
set ttimeoutlen=50
set ts=2 sts=2 sw=2 expandtab
set visualbell

let g:solarized_termcolors=256
set background=dark
colorscheme solarized

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let mapleader=","
nnoremap ; :
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap fd <ESC>
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap j gj
nnoremap k gk
nnoremap <silent> <F2> :NERDTreeToggle<CR>

if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
