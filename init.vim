call plug#begin('~/.local/share/nvim/plugged')
"Plug 'valloric/youcompleteme'
Plug 'dart-lang/dart-vim-plugin'
Plug 'dart-lang/dart-vim-plugin'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'lervag/vimtex'
Plug 'natebosch/dartlang-snippets'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sirver/ultisnips'
Plug 'thosakwe/vim-flutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
call plug#end()

let g:NERDCustomDelimiters = { 'c': { 'left': '// ','right': ''}}
let g:NERDDpaceDelims=1

"let g:ycm_confirm_extra_conf=0
"let g:ycm_autoclose_preview_window_after_insertion=1

let dart_style_guide=2

let g:lsc_server_commands = {'dart': 'dart_language_server'}
let g:lsc_auto_map = {
    \ 'defaults': v:true,
    \ 'GoToDefinition': '<leader>g',
    \ 'GoToDefinitionSplit': '<leader>G',
    \ 'FindReferences': '<leader>R',
    \ 'NextReference': '<leader>n',
    \ 'PreviousReference': '<leader>N',
    \ 'Rename': '<leader>c',
    \ 'ShowHover': ',h',
    \ }
autocmd CompleteDone * silent! pclose

nnoremap <C-r> :FlutterRun -d iPhone<cr>:resize 15<cr><C-W>j
nnoremap <C-s> :FlutterQuit<cr>
nnoremap <C-E> :FlutterEmulators<cr>

map <C-Space> :NERDTree

let g:SuperTabDefaultCompletionType = "<C-n>"

"if !exists('g:ycm_semantic_triggers')
"  let g:ycm_semantic_triggers = {}
"endif
"
"vimtex
"let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
"
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

"UltiSnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let mapleader = ","
nnoremap <leader><space> :noh<cr>

"nnoremap <leader>f :YcmCompleter FixIt<cr>
"set autoindent
set shiftwidth=4
set tabstop=4
set expandtab

set foldmethod=indent
set nofoldenable
set foldnestmax=2

set nocompatible
set ruler
"set sw=4
set relativenumber
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set wrap
set mouse=a
autocmd InsertLeave ? update

highlight SpellBad ctermbg=200
highlight Search ctermbg=20

set clipboard+=unnamedplus

autocmd! bufwritepost init.vim source %
nnoremap <leader>e :e $MYVIMRC<cr>
nnoremap <leader>E :vsplit $MYVIMRC<cr>
nnoremap <leader>r :so $MYVIMRC<cr>

"edit the next placeholder (placeholder is <++>)
nnoremap <leader><tab> /<++><cr>:noh<cr>cf>

nnoremap <leader>F ifuck.