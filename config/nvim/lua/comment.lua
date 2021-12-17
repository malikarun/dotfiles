-- NVIM Comment Key Mappings
local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

map('n', '<C-l>', ':CommentToggle<CR>', options)
