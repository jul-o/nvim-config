return {
  'mbbill/undotree',
  'tpope/vim-fugitive',

  {
    'Mofiqul/vscode.nvim',
  },
  {
    'joshdick/onedark.vim',
  },
  {
    'chriskempson/base16-vim'
  },
  {
    'gosukiwi/vim-atom-dark'
  },
  {
    'jacoborus/tender.vim'
  },
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
    'numToStr/Comment.nvim',
    config = {},
  },

  {
    "gregorias/nvim-mapper",
    config = {},
    dependencies = {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.1',
      dependencies = {'nvim-lua/plenary.nvim'}
    }
  },

  -- Unless you are still migrating, remove the deprecated commands from v1.x

  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'kyazdani42/nvim-web-devicons'
    },
    version = 'nightly' -- optional, updated every week. (see issue #1193)
  },

  -- {'neoclide/coc.nvim', branch = 'release'},

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
