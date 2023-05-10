-- Telescope Key Mappings
local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

map('n', '<C-f>', '<cmd>Telescope find_files<CR>', options)
map('n', '<C-g>', '<cmd>Telescope git_files<CR>', options)
map('n', '<C-b>', '<cmd>Telescope buffers<CR>', options)
map('n', '<C-p>', '<cmd>Telescope file_browser<CR>', options)
map('n', '<C-h>', '<cmd>Telescope live_grep<CR>', options)
