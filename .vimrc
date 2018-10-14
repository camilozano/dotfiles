" ~/.vimrc

set laststatus=2
set timeoutlen=1000
set ttimeoutlen=0

" === MAPPINGS ===

" Leader
:let mapleader=" "

" Single Keys
:noremap ; :
:noremap : ;

" === PLUGINS ===

" Initialize Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugin List
Plugin 'airblade/vim-gitgutter'
Plugin 'alvan/vim-closetag'
Plugin 'kien/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'raimondi/delimitmate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Javascript-Indent'
" JS deoplete
Plugin 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plugin 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install -g tern' }
Plugin 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

call vundle#end()

" === SHORTCUTS ===

" Toggle NERDTree
map <Leader>n ;NERDTreeToggle<CR>

" Tab Switching
map <C-l> ;tabn<CR>
map <C-h> ;tabp<CR>

" Window Switching
nmap <silent> <Leader>k ;wincmd k<CR>
nmap <silent> <Leader>j ;wincmd j<CR>
nmap <silent> <Leader>h ;wincmd h<CR>
nmap <silent> <Leader>l ;wincmd l<CR>
nmap <silent> <Leader>x ;wincmd x<CR>
nmap <silent> <Leader>K ;wincmd K<CR>
nmap <silent> <Leader>J ;wincmd J<CR>
nmap <silent> <Leader>H ;wincmd H<CR>
nmap <silent> <Leader>L ;wincmd L<CR>

" Page movement
nmap <silent> <Leader>f <C-f><CR>
nmap <silent> <Leader>b <C-b><CR>
nmap <silent> <Leader>d <C-d><CR>
nmap <silent> <Leader>u <C-u><CR>

" === SETTINGS ===

" General
set backspace=indent,eol,start
set number relativenumber
set showcmd
set incsearch
set nohlsearch
set expandtab
set tabstop=4
set shiftwidth=4
set scrolloff=15
set mouse=a

" Terminal
tnoremap <Esc> <C-\><C-n>

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [  'tern#Complete',  'jspc#omni' ]
set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']

" Color
set background=dark
colorscheme gruvbox

" Lightline
set noshowmode

let g:closetag_filenames = '*.html, *.html.erb'

" Delimitmate
let delimitMate_matchpairs = "(:),[:],{:}"
let delimitMate_expand_cr = 1


"Autocmd
autocmd BufNewFile,BufRead *.html set filetype=html.javascript

" Filetype
filetype plugin indent on

" Syntax
syntax on

hi vertsplit ctermfg=238 ctermbg=235
hi LineNr ctermfg=237
hi StatusLine ctermfg=235 ctermbg=245
hi StatusLineNC ctermfg=235 ctermbg=237
hi Search ctermbg=58 ctermfg=15
hi Default ctermfg=1
hi clear SignColumn
hi SignColumn ctermbg=235
hi GitGutterAdd ctermbg=235 ctermfg=245
hi GitGutterChange ctermbg=235 ctermfg=245
hi GitGutterDelete ctermbg=235 ctermfg=245
hi GitGutterChangeDelete ctermbg=235 ctermfg=245
hi EndOfBuffer ctermfg=237 ctermbg=235

set statusline=%=%P\ %f\ %m
set fillchars=vert:\ ,stl:\ ,stlnc:\
