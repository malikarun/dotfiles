-- Automatically install packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
local packer = require('packer')

return packer.startup(function(use)
  use { 'wbthomason/packer.nvim', opt = false }
  use 'tpope/vim-fugitive'
  use 'tpope/vim-sensible'
  use 'airblade/vim-gitgutter'
  use 'vim-ruby/vim-ruby'
  use 'tpope/vim-rails'
  use 'tpope/vim-cucumber'
  use 'tpope/vim-rake'
  use 'tpope/vim-haml'
  use 'kchmck/vim-coffee-script'
  use 'rking/vim-ruby-refactoring'
  use 'thoughtbot/vim-rspec'
  use 'neovim/nvim-lspconfig'
  -- use 'github/copilot.vim'
  use 'tpope/vim-unimpaired'

  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()

      require('indent_blankline').setup {
          space_char_blankline = ' ',
          show_current_context = true,
      }
    end
  }

  use {
    'Mofiqul/vscode.nvim',
    config = function()
      vim.g.vscode_style = 'dark'
      vim.cmd([[
        colorscheme vscode
      ]])
    end,
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = {'nvim-tree/nvim-web-devicons'},
    config = function()
      require('lualine').setup({
        options = {
          theme = 'vscode',
          icons_enabled = true,
        },
        sections = {
          lualine_c = {
            {'filename', path = 1},
          },
        },
      })
    end,
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('nvim-tree').setup({})
    end,
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('telescope')
        .load_extension('fzf')
    end
  }

  use {
    'SirVer/ultisnips',
    requires = 'honza/vim-snippets',
    config = function()
      vim.g.UltiSnipsRemoveSelectModeMappings = 0
    end,
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
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
    }
  }

  use {
    'tzachar/cmp-tabnine',
    run = './install.sh',
    requires = 'hrsh7th/nvim-cmp',
  }

  use {
    'terrortylor/nvim-comment',
    config = function()
      require('nvim_comment').setup({
        marker_padding = true,
        comment_empty = false,
        create_mappings = true,
        line_mapping = 'C-l',
      })
    end,
  }

  use {
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
    end
  }

  use {
     'akinsho/bufferline.nvim',
     tag = "v3.*",
     requires = 'nvim-tree/nvim-web-devicons',
     config = function()
       vim.opt.termguicolors = true
       require("bufferline").setup{}
     end
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
