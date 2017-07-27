set nocompatible              " be iMproved, required
filetype off                  " required

" set 256 colors for vim
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Syntax on
syntax on
Plugin 'slim-template/vim-slim.git'
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

" Show line numbers
set nu
hi LineNr cterm=bold ctermbg=236

" Set tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Show spaces
set list
set listchars=space:ˑ
hi Whitespace ctermfg=DarkGrey
match Whitespace /\s/

" Tree
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

" Search files
" Plugin 'wincent/command-t'
" nmap <silent> <C-p> <Plug>(CommandT)
Plugin 'ctrlpvim/ctrlp.vim'

" JS
Plugin 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers=['eslint']

" Search in files
Plugin 'rking/ag.vim'

" Search //
set hlsearch

" For see change git files
Plugin 'airblade/vim-gitgutter'
set updatetime=250

" vim-airline - footer
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
set laststatus=2

" Allow backspace
set backspace=indent,eol,start

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

