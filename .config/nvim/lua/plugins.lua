--vim._update_package_paths()

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- use 'https://github.com/jsnal/vim-serape', { 'tag': 'v0.2.2' }
    use 'bluz71/vim-moonfly-colors'
    use 'https://github.com/jsnal/vim-serape'
    use {
        'hoob3rt/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true},
        config = function() require ('plugin_configs.lualine') end
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function() require ('plugin_configs.telescope') end
    }
end)

