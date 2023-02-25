return {

    -- use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    'ThePrimeagen/harpoon',
    'mbbill/undotree',
    'tpope/vim-fugitive',

    {'Mofiqul/vscode.nvim', config = function() require('vscode').setup({}) end },

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
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
    },

    "williamboman/mason.nvim",

    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to the default settings,
                -- refer to the configuration section below
            }
        end
    },

    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },

    "terrortylor/nvim-comment",
    'vim-airline/vim-airline',
    {
        "gregorias/nvim-mapper",
        config = function() require("nvim-mapper").setup{} end,
        dependencies = {
          'nvim-telescope/telescope.nvim', tag = '0.1.1',
          -- or                            , branch = '0.1.x',
          dependencies = { {'nvim-lua/plenary.nvim'} 
        }
      }
    },

    -- Unless you are still migrating, remove the deprecated commands from v1.x

    {
      'nvim-tree/nvim-tree.lua',
      dependencies = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      version = 'nightly' -- optional, updated every week. (see issue #1193)
    },

    {'romgrk/barbar.nvim', dependencies = 'nvim-web-devicons'},

    {'neoclide/coc.nvim', branch = 'release'},

    'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim',

    'junegunn/fzf',
    'junegunn/fzf.vim',

    {
      "folke/todo-comments.nvim",
      dependencies = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup {}
      end
    },

    "LinArcX/telescope-command-palette.nvim",

    {
      "akinsho/toggleterm.nvim", 
      version = '*',
      config = function()
        require("toggleterm").setup()
      end},

      'lewis6991/gitsigns.nvim',

      'f-person/git-blame.nvim',

      'lukas-reineke/indent-blankline.nvim',

      'kylechui/nvim-surround',

      'napmn/react-extract.nvim',

      'windwp/nvim-ts-autotag',

      { 'sindrets/diffview.nvim', dependencies = 'nvim-lua/plenary.nvim' },

      'ahmedkhalf/project.nvim',

      'bybunni/llm.nvim',

      {
        'kosayoda/nvim-lightbulb',
        dependencies = 'antoinemadec/FixCursorHold.nvim',
      },
    }