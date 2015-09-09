set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-ruby/vim-ruby'
Plugin 'slim-template/vim-slim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'schickling/vim-bufonly'
Plugin 'duggiefresh/vim-easydir'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Appearance
syntax on
syntax enable
set t_Co=256
if !has("gui_running")
  let g:solarized_termtrans=1
  let g:solarized_termcolors=256
endif
colorscheme solarized
set background=dark

" Sanity Config
set nocompatible
set encoding=utf-8
set number
set backspace=indent,eol,start
set autoread
set hidden
set history=1000
inoremap jj <ESC>
noremap <C-u> :bp<cr>
noremap <C-i> :bn<cr>
cabbr bc Bclose
cabbr bo BufOnl
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " turn off auto comment
" let g:netrw_liststyle=3

" Search Settings
set incsearch
set hlsearch
set viminfo='100,f1

"Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set autoindent
set list listchars=tab:\ \ ,trail:·

" Splits
set splitright
set splitbelow

" vim-airline
let g:airline_powerline_fonts = 0
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.crypt = '🔒'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled=0
let g:airline_theme = 'dark'
set laststatus=2

" tmuxline
let g:tmuxline_powerline_separators = 0

" powerline
let g:powerline_symbols = 'fancy'

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapJumpNextSibling='b'
let NERDTreeMapJumpPrevSibling='v'

" ctrlp
let g:ctrlp_show_hidden = 1
