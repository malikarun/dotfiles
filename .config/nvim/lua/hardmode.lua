-- Disable arrow keys to enforce hjkl
local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

map('i', '<Up>', '<Nop>', options)
map('i', '<Down>', '<Nop>', options)
map('i', '<Left>', '<Nop>', options)
map('i', '<Right>', '<Nop>', options)
