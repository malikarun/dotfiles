-- Keep undoing after file close
vim.cmd([[
  if has('persistent_undo')      "check if your vim version supports it
    set undofile                 "turn on the feature
    set undodir=$HOME/.config/nvim/undo  "directory where the undo files will be stored
  endif
]])
