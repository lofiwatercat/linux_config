--vim._update_package_paths()

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- Colorschemes
    use 'bluz71/vim-moonfly-colors'
    use 'https://github.com/jsnal/vim-serape'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    
    -- Twilight
    use {
        "folke/twilight.nvim",
        config = function()
            require("twilight").setup{
                -- config here
            }
        end
    }
end)

