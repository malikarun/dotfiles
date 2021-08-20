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
