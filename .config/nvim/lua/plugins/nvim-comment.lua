return {
  'terrortylor/nvim-comment',
  config = function()
    require('nvim_comment').setup({
      marker_padding = true,
      comment_empty = false,
      create_mappings = true,
      line_mapping = 'C-l',
    })

    local map = vim.api.nvim_set_keymap
    local options = { noremap = true, silent = true }

    map('n', '<C-l>', ':CommentToggle<CR>', options)
  end,
}
