local map = vim.api.nvim_set_keymap
local options = { noremap = true }

-- Undo defaults
vim.cmd([[
  filetype off
  set nocompatible
]])

-- Other Mappings
-- Save with ctrl+
map('n', '<C-s>', ':update<CR>', options)
map('i', '<C-s>', '<Esc>:update<CR>', options)

-- Switch buffers with arrow keys
map('n', '<left>', ':bp<CR>', options)
map('n', '<right>', ':bn<CR>', options)

-- Auto Run Commands
vim.cmd([[
  autocmd BufWritePre * :%s/\s\+$//e
]])

-- Jump to start and end of line using the home row keys
map('n', 'H', '^', options)
map('n', 'L', '$', options)

-- Reselect visual block after indent
map('v', '<', '<gv', options)
map('v', '>', '>gv', options)

-- Yank and put system pasteboard with <Leader>y/p.
map('n', '<Leader>y', '"*y', options)
map('n', '<Leader>Y', '"*y$', options)
map('n', '<Leader>yy', '"*yy', options)
map('n', '<Leader>p', '"*p', options)
map('n', '<Leader>P', '"*P', options)

-- Disable arrow keys to enforce hjkl
local options = { noremap = true, silent = true }

map('i', '<Up>', '<Nop>', options)
map('i', '<Down>', '<Nop>', options)
map('i', '<Left>', '<Nop>', options)
map('i', '<Right>', '<Nop>', options)

-- Keep undoing after file close
vim.cmd([[
  if has('persistent_undo')      "check if your vim version supports it
    set undofile                 "turn on the feature
    set undodir=$HOME/.config/nvim/undo  "directory where the undo files will be stored
  endif
]])

--  Set vim options
vim.cmd([[
  filetype plugin indent on
  highlight ColorColumn ctermbg=0 guibg=#005cb2
  set guicursor=a:blinkwait5-blinkon5-blinkoff5
]])

local opt = vim.opt

opt.wrap = false
opt.foldmethod = 'indent' -- indent, syntax
opt.foldenable = false
opt.colorcolumn = '80'
opt.syntax = 'on'
opt.smartcase = true
opt.hlsearch = true
opt.errorbells = false
opt.smarttab = true
opt.scrolloff = 10
opt.shiftwidth = 2
opt.cindent = true
opt.number = true
opt.relativenumber = true
opt.laststatus = 2
opt.showmode = false
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2
opt.spelllang = 'en'
opt.modifiable = true
opt.inccommand = 'nosplit'
opt.termguicolors = true
opt.list = true
-- opt.listchars = {
--   space = '.',
--   eol = '↴',
-- }
