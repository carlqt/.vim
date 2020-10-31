set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-ruby/vim-ruby'
Plug 'slim-template/vim-slim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'schickling/vim-bufonly'
Plug 'duggiefresh/vim-easydir'
Plug 'mxw/vim-jsx'
Plug 'kchmck/vim-coffee-script'
Plug 'henrik/vim-indexed-search'
Plug 'fatih/vim-go'
Plug 'reewr/vim-monokai-phoenix'
Plug 'pkukulak/idle'
Plug 'posva/vim-vue'
Plug 'digitaltoad/vim-pug'
Plug 'gkjgh/cobalt'
Plug 'fatih/molokai'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'dart-lang/dart-vim-plugin'
call plug#end()            " required

" Appearance
syntax on
syntax sync minlines=10000
" syntax enable
set t_Co=256
colorscheme cobalt
set background=dark

" Sanity Config
filetype on
filetype indent on
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
" noremap <Leader>y "*y
" noremap <Leader>p "*p
set clipboard=unnamed
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
map <C-f><C-n> :NERDTreeFind<CR>
let NERDTreeMapJumpNextSibling='b'
let NERDTreeMapJumpPrevSibling='v'

" fzf
set rtp+=/usr/local/opt/fzf
map <C-p> :Files<CR>
map <C-f><C-f> :Ag<CR>
let g:fzf_history_dir = '~/.local/share/fzf-history'
let $FZF_TREE_COMMAND='(git ls-tree -r --name-only HEAD || find . -path "*/\.*" -prune -o -type f -print -o -type l -print | sed s/^..//) 2> /dev/null'
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""' "include hidden files
"let $FZF_DEFAULT_COMMAND=$FZF_TREE_COMMAND

" vim-go
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_get_update = 0
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
"let g:syntastic_go_checkers = ['golint']
set updatetime=100

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"au FileType go nmap <leader>i <Plug>(go-info)

" syntastic eslint setup
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0

" jsx setup
let g:jsx_ext_required = 0

" include hidden files ctrlp
let g:ctrlp_show_hidden = 1
