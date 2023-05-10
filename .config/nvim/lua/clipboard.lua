-- Yank and put system pasteboard with <Leader>y/p.
local map = vim.api.nvim_set_keymap
local options = { noremap = true }

map('n', '<Leader>y', '"*y', options)
map('n', '<Leader>Y', '"*y$', options)
map('n', '<Leader>yy', '"*yy', options)
map('n', '<Leader>p', '"*p', options)
map('n', '<Leader>P', '"*P', options)
