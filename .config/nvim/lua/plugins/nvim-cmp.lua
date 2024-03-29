return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-nvim-lsp',
    'quangnguyen30192/cmp-nvim-ultisnips',
    'hrsh7th/cmp-nvim-lua',
    'octaltree/cmp-look',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-calc',
    'f3fora/cmp-spell',
    'hrsh7th/cmp-emoji',
    'onsails/lspkind-nvim',
    'windwp/nvim-autopairs',
  },
  config = function()
    local cmp = require('cmp')

    local t = function(str)
      return vim.api.nvim_replace_termcodes(str, true, true, true)
    end

    local check_back_space = function()
      local col = vim.fn.col('.') - 1
      return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
    end

    cmp.setup {
      formatting = {
        format = function(entry, vim_item)
          -- fancy icons and a name of kind
          vim_item.kind = require('lspkind').presets.default[vim_item.kind] ..' ' .. vim_item.kind
          -- set a name for each source
          vim_item.menu = ({
            -- buffer = '[Buffer]',
            nvim_lsp = '[LSP]',
            ultisnips = '[UltiSnips]',
            nvim_lua = '[Lua]',
            cmp_tabnine = '[TabNine]',
            look = '[Look]',
            path = '[Path]',
            spell = '[Spell]',
            calc = '[Calc]',
            emoji = '[Emoji]'
          })[entry.source.name]

          return vim_item
        end
      },
      mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Insert,
          select = true
        }),
        ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' })
      },
      snippet = {
        expand = function(args)
          vim.fn['UltiSnips#Anon'](args.body)
        end
      },
      sources = {
        {name = 'buffer'},
        {name = 'nvim_lsp'},
        {name = 'ultisnips'},
        {name = 'nvim_lua'},
        {name = 'look'},
        {name = 'path'},
        {name = 'cmp_tabnine'},
        {name = 'calc'},
        {name = 'spell'},
        {name = 'emoji'}
      },
      completion = {completeopt = 'menu,menuone,noinsert'}
    }

    -- Autopairs
    --- require('nvim-autopairs.completion.cmp').setup({
    ---     map_cr = true,
    ---     map_complete = true,
    ---     auto_select = true
    --- })

    -- TabNine
    local tabnine = require('cmp_tabnine.config')
    tabnine:setup({max_lines = 1000, max_num_results = 20, sort = true})

    -- Database completion
    vim.api.nvim_exec([[
      autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
    ]], false)

  end,
}
