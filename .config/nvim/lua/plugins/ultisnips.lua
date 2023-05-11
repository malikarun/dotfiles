return {
  'SirVer/ultisnips',
  dependencies = 'honza/vim-snippets',
  config = function()
    vim.g.UltiSnipsRemoveSelectModeMappings = 0
  end,
}
