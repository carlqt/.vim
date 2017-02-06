set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-ruby/vim-ruby'
Plug 'slim-template/vim-slim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'schickling/vim-bufonly'
Plug 'duggiefresh/vim-easydir'
Plug 'derekwyatt/vim-scala'
call plug#end()            " required

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
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
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

" fzf
let g:fzf_command_prefix = "Fzf"
map <c-p> :FzfFiles<CR>
