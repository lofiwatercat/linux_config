-- Packer config file

-- packer.nvim
-- https://github.com/wbthomason/packer.nvim

-- Add packages
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- Color scheme
    use 'bluz71/vim-moonfly-colors'

    -- Status line
    use {'famiu/feline.nvim';
        config = function()
            require('plugins/feline')
        end
    }

    -- Fzf-lua to find files
    use {'ibhagwan/fzf-lua',
        requires = { 'kyazdani42/nvim-web-devicons' }
    }

    -- File navigation
    use 'kyazdani42/nvim-tree.lua';
    require('plugins/nvim-tree')

    -- Icons
    use 'kyazdani42/nvim-web-devicons';

    -- Line indentation markers
    use 'Yggdroot/indentLine';

    --  Dim's unfocused code
    use {'folke/twilight.nvim',
        config = function()
            require('plugins/twilight')
        end
    }

    -- Use glow for markdown preview
    use {'ellisonleao/glow.nvim'}

    -- Better marks
    use {'chentau/marks.nvim';
        config = function()
            require('plugins/marks')
        end
    }

end)
