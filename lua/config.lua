--set number
--set hlsearch                " highlight search 
--set incsearch               " incremental search
--set tabstop=4               " number of columns occupied by a tab
--set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
--set expandtab               " converts tabs to white space
--set shiftwidth=4            " width for autoindents
--set autoindent              " indent a new line the same amount as the line just typed
--set wildmode=longest,list   " get bash-like tab completions
--filetype plugin indent on   "allow auto-indenting depending on file type
--syntax on                   " syntax highlighting
--set clipboard=unnamedplus   " using system clipboard
--filetype plugin on
--set cursorline              " highlight current cursorline
--set ttyfast                 " Speed up scrolling in Vim
--" set spell                 " enable spell check (may need to download language package)
--" set noswapfile            " disable creating swap file
--" set backupdir=~/.cache/vim " Directory to store backup files.

vim.opt.clipboard = 'unnamedplus'

vim.o.background = 'dark'
require('vscode').setup({})

-- vim.cmd('colorscheme onedark')
-- vim.cmd[[colorscheme tokyonight-moon]]
-- vim.cmd.colorscheme("tokyonight-moon")

