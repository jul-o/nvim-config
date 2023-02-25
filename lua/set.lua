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

vim.opt.nu = true
vim.opt.relativenumber = true

vim.g.foldmethod = 'expr'
vim.g.foldexpr = 'nvim_treesitter#foldexpr()'
-- vim.opt.foldenable = false

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true

vim.opt.updatetime = 50
vim.opt.ttyfast = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.g.mapleader = " "

