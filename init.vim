set nocompatible
set background=dark

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'mbbill/undotree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

Plug 'jiangmiao/auto-pairs'

" For HTML
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'

Plug 'frazrepo/vim-rainbow'

Plug 'tpope/vim-fugitive'

Plug 'justinmk/vim-sneak'

Plug 'ThePrimeagen/vim-be-good'

" React Snippets:
" Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

call plug#end()

source ~/.config/nvim/cocconfig.vim

set clipboard+=unnamedplus

colorscheme gruvbox-material

let mapleader = " "

let g:airline#extensions#whitespace#enabled = 0

syntax on

let g:airline#extensions#tabline#enabled = 1

set mouse=a

set buftype=""

set termguicolors
set number
set relativenumber
set colorcolumn=80
set background=dark
set nowrap
set smartcase
set nohlsearch
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=4
set expandtab
set smartindent
set smartcase
set noswapfile
set incsearch
set encoding=utf-8

set undodir=~/.config/nvim/undotree
set undofile

"ignore files telescope
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node%_modules/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*

map <silent> <C-n> :NERDTreeFocus <CR>

nnoremap Y y$
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>y "+y
vnoremap <leader>Y "+y$

nnoremap <expr> k (v:count > 3 ? "m'" . v:count : "") .'k'
nnoremap <expr> j (v:count > 3 ? "m'" . v:count : "") .'j'

nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k

nnoremap gs <C-^> 

nnoremap gl :w<CR>:bn<CR>
nnoremap gh :w<CR>:bp<CR>
nnoremap <leader>v <C-w>v

nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>H :set invhlsearch<CR>

nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>

nnoremap <leader>O O<esc>
nnoremap <leader>o o<esc>

nnoremap <leader>d :CocDiagnostics<CR>

nnoremap <C-n> :CocCommand explorer<CR>

nnoremap <leader>q :bd<CR>

nnoremap <A-l> :diffget //3<CR>
nnoremap <A-h> :diffget //2<CR>

nnoremap <leader>r :vertical resize 

nnoremap <leader>i <C-w>v <bar> <C-w>l <bar> :term<CR>

nnoremap <leader>a :CocAction <CR>

tnoremap <Esc> <C-\><C-n>
nmap <leader><C-r> iconst<space>"filename"<space>=<space>()<space>=><space>{<newline><space><space><space><space>return<space>(<newline><space><space><space><space><div><newline><space><space><space><space></div><newline>)<newline>}<newline><newline>export<space>default<space>"filename"<esc>

nmap ö <Plug>Sneak_s
nmap Ö <Plug>Sneak_S

xmap ö <Plug>Sneak_s
xmap Ö <Plug>Sneak_S

omap ö <Plug>Sneak_s
omap Ö <Plug>Sneak_S

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

