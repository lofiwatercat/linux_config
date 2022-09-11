local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup({ function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- Color theme
  use { 'bluz71/vim-moonfly-colors' }

  -- LSP
  use { 'williamboman/mason.nvim', config = function()
    require('plugins/mason')
  end }
  use { 'williamboman/mason-lspconfig.nvim', config = function()
    require('plugins/mason-lspconfig')
  end }
  use { 'neovim/nvim-lspconfig', config = function()
    require('plugins/lsp')
  end }

  -- Completions
  use { "hrsh7th/nvim-cmp",
    config = function() require('plugins/cmp') end
  }
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }
  use { "hrsh7th/cmp-cmdline" }
  use { "saadparwaiz1/cmp_luasnip" }

  -- Snippets
  use { "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" }
  use "rafamadriz/friendly-snippets"

  -- Autopairs
  use { "windwp/nvim-autopairs",
    config = function() require("plugins/nvim-autopairs") end
  }

  -- Comments
  use { "numToStr/Comment.nvim",
    config = function() require("plugins/comment") end
  }

  -- Bufferline
  use { 'akinsho/bufferline.nvim', tag = "v2.*", requires =
  'kyazdani42/nvim-web-devicons', config = function()
    require('plugins/bufferline')
  end }

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function() require("plugins/lualine") end
  }

  -- Bufferdelete
  use { "famiu/bufdelete.nvim" }

  -- Toggleterm
  use { "akinsho/toggleterm.nvim", tag = '*',
    config = function() require("plugins/toggleterm") end
  }

  -- Treesitter, need that extra long run = function so ':TSUpdate' doesn't fail
  -- on first installation
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function() require('plugins/nvim-treesitter') end,
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- Nvim-tree
  use { 'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function() require('plugins/nvim-tree') end
  }

  -- Indent markers
  use { 'lukas-reineke/indent-blankline.nvim',
    config = function() require('plugins/indent-blankline') end
  }

  -- Telescope, I use with ripgrep
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function() require('plugins/telescope') end,
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end,

  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  } })
