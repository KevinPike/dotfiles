" git repos on your local machine (i.e. when working on your own plugin)
" git repos on your local machine (i.e. when working on your own plugin)
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'ekalinin/Dockerfile.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
" Automatically open NERDTree when vim has no args
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
Bundle 'klen/python-mode'
"Custom keymaps
"map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
"
"setlocal isk+=?
"
"nno <leader>t :<C-u>AsyncFinder<CR>
"
""Preferences
set hlsearch
set number
set textwidth=0 nosmartindent tabstop=4 shiftwidth=2 softtabstop=2 expandtab
let &t_Co=256
set backspace=2
set hidden
set background=dark
set wildignore+=*.class,*.jar,.git
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_show_hidden = 1
let g:asyncfinder_ignore_files = "['*.swp', '*.class']"
let g:asyncfinder_ignore_dirs = "['*.AppleDouble*','*.DS_Store*','*.git*','*.hg*','*.bzr*','*target*']"

" Highlight trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/
" Set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
map <silent> <LocalLeader>ws :highlight clear ExtraWhitespace<CR>
"
let g:ctrlp_show_hidden = 1
"
" " Sane window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" UI "
set number
syntax enable

" Set default encoding to UTF-8
scriptencoding utf-8
set encoding=utf-8

" Tabs and Inserts "
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set list listchars=tab:>-,trail:›,extends:…

colorscheme badwolf
