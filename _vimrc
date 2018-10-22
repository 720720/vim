" language

language messages en

" vimrc

augroup vimrc
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

" mkdir

if !isdirectory($HOME . '/vimfiles/autoload')
  call mkdir($HOME . '/vimfiles/autoload', 'p')
endif

if !isdirectory($HOME . '/vimfiles/backup')
  call mkdir($HOME . '/vimfiles/backup', 'p')
endif

if !isdirectory($HOME . '/vimfiles/swap')
  call mkdir($HOME . '/vimfiles/swap', 'p')
endif

if !isdirectory($HOME . '/vimfiles/undo')
  call mkdir($HOME . '/vimfiles/undo', 'p')
endif

" plug

if !filereadable($HOME . '/vimfiles/autoload/plug.vim')
  silent !bitsadmin /transfer plug https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \%HOMEDRIVE\%\%HOMEPATH\%\vimfiles\autoload\plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'https://github.com/alessandroyorba/despacio'
Plug 'https://github.com/morhetz/gruvbox'
Plug 'https://github.com/nanotech/jellybeans.vim'
Plug 'https://github.com/sjl/badwolf'
Plug 'https://github.com/tomasr/molokai'

Plug 'https://github.com/720720/snippets'
Plug 'https://github.com/720720/whitespace'
Plug 'https://github.com/chrisbra/colorizer'
Plug 'https://github.com/conradirwin/vim-bracketed-paste'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/jamessan/vim-gnupg'
Plug 'https://github.com/justinmk/vim-sneak'
Plug 'https://github.com/lifepillar/vim-mucomplete'
Plug 'https://github.com/ludovicchabant/vim-gutentags'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/mbbill/undotree'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/sirver/ultisnips'
Plug 'https://github.com/tommcdo/vim-lion'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/tpope/vim-repeat'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'

call plug#end()

" vim

set autoindent
set autoread
set background=dark
set backspace=eol,indent,start
set backup
set backupdir=~/vimfiles/backup//
set belloff=ctrlg
set cmdheight=2
set completeopt=menuone,preview,noinsert
set directory=~/vimfiles/swap//
set encoding=utf-8
set expandtab
set guifont=DejaVuSansMonoForPowerline_NF:h10
set guioptions=gmrL
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set nocompatible
set number
set shiftwidth=2
set showcmd
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=2
set tabstop=2
set timeoutlen=1000
set ttimeoutlen=0
set undodir=~/vimfiles/undo//
set undofile
set wildmenu
set wrap

" color

let g:despacio_Pitch = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'

silent! color gruvbox

" colorizer

let g:colorizer_auto_filetype = 'css,html'

" airline

let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1

" nerdtree

let g:NERDTreeShowHidden = 1

" ctrlp

let g:ctrlp_show_hidden = 1

" tagbar

let g:tagbar_ctags_bin = 'ctags'

" gutentags

let g:gutentags_ctags_executable = 'ctags'
let g:gutentags_cache_dir = '~/vimfiles/tags'
let g:gutentags_project_root = ['robots.txt']

" mucomplete

let g:mucomplete#enable_auto_at_startup = 1

let g:mucomplete#chains = {}
let g:mucomplete#chains.default = ['path', 'ulti', 'omni', 'keyn', 'dict', 'uspl']
let g:mucomplete#chains.vim = ['path', 'ulti', 'cmd', 'keyn']

inoremap <silent> <expr> <CR> mucomplete#ultisnips#expand_snippet("\<CR>")

" keyboard

let g:mapleader = ' '

nnoremap <silent> <Tab> :bnext<CR>
nnoremap <silent> <S-Tab> :bprevious<CR>

nnoremap <silent> <Leader>1 :NERDTreeToggle<CR>
nnoremap <silent> <Leader>2 :CtrlP<CR>
nnoremap <silent> <Leader>3 :TagbarToggle<CR>
nnoremap <silent> <Leader>4 :UndotreeToggle<CR>

nnoremap <silent> <Leader>5 gg=G``
