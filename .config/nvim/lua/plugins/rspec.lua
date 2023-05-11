return {
  'thoughtbot/vim-rspec',
  config = function()
    -- RSpec.vim mappings
    local map = vim.api.nvim_set_keymap
    local options = { noremap = false }

    map('n', '<Leader>t', ':call RunCurrentSpecFile()<CR>', options)
    map('n', '<Leader>s', ':call RunNearestSpec()<CR>', options)
    map('n', '<Leader>l', ':call RunLastSpec()<CR>', options)
    -- map('n', '<Leader>a :call', 'RunAllSpecs()<CR>', options)
  end,
}
