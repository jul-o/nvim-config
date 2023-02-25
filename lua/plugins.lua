-- TODO:
--  - git difftool: installed diffview
--  - barbar: display git modified files
--  - Better code completion
--  - ultisnips
--  - Fold blocks
--  - investigate on code lens
--  - underline errors/Users/julessang/.local/state/nvim/lsp.log
--
--
-- TOTEST:
--  - lazy.nvim
--
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'Mofiqul/vscode.nvim'

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use 'ThePrimeagen/harpoon'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    use "williamboman/mason.nvim"

    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use "terrortylor/nvim-comment"
    use 'vim-airline/vim-airline'
    use {
        "gregorias/nvim-mapper",
        config = function() require("nvim-mapper").setup{} end,
        before = "telescope.nvim"
    }

    -- Unless you are still migrating, remove the deprecated commands from v1.x

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

    use {'neoclide/coc.nvim', branch = 'release'}

    use 'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'

    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {}
        end
    }

    use { "LinArcX/telescope-command-palette.nvim" }

    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}

    use 'lewis6991/gitsigns.nvim'

    use 'f-person/git-blame.nvim'

    use 'lukas-reineke/indent-blankline.nvim'

    use 'kylechui/nvim-surround'

    use 'napmn/react-extract.nvim'

    use 'windwp/nvim-ts-autotag'

    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

    use 'ahmedkhalf/project.nvim'

    use 'bybunni/llm.nvim'

    
    

    use {
      'kosayoda/nvim-lightbulb',
      requires = 'antoinemadec/FixCursorHold.nvim',
    }
  end)
