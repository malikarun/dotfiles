local map = vim.api.nvim_set_keymap
local options = { noremap = true }

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
