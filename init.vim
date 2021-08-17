" Undo defaults
set nocompatible
filetype off

" Vim Plug
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
call plug#end()

" NERDTree Key Mappings
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nmap <C-l> <plug>NERDCommenterToggle

" FZF Key Mappings
nnoremap <silent> <C-g> :GFiles!<CR>
nnoremap <silent> <C-b> :Buffers!<CR>
nnoremap <C-f> :Rg!<CR>

" Other Mappings
" Save with ctrl+
nnoremap <C-s> :update<CR>
inoremap <C-s> <Esc>:update<CR>

" Auto Run Commands
autocmd BufWritePre * :%s/\s\+$//e " Remove trailing spaces on save

" Gruvbox
colorscheme gruvbox

" reset
filetype plugin indent on "required
syntax on
set colorcolumn=80
set background=dark
highlight ColorColumn ctermbg=0 guibg=darkgrey
set number
set nowrap
set smartcase
set hlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set expandtab
set smartindent

" Keep undoing after file close
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.config/nvim/undo  "directory where the undo files will be stored
endif

