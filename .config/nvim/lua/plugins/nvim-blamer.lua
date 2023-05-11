return {
  'ttys3/nvim-blamer.lua',
  config = function()
    local blamer = require('nvim-blamer')

    blamer.setup({
      enable = true,
      prefix = '',
      format = ' %committer | %hash-short | %summary | %committer-time %committer-tz',
      show_error = true,
    })

    vim.cmd([[
      call nvimblamer#auto()
    ]])
  end,
}
