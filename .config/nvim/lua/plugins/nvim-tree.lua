return {
  'nvim-tree/nvim-tree.lua',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('nvim-tree').setup({})

    local map = vim.api.nvim_set_keymap
    local options = { noremap = true }

    map('n', '<C-t>', ':NvimTreeToggle<CR>', options)

    vim.cmd([[
      highlight NvimTreeFolderIcon guibg=blue
      set encoding=UTF-8
    ]])
  end,
}
