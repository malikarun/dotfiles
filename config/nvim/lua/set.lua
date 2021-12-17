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
