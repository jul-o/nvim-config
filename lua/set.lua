vim.opt.clipboard = "unnamedplus"

vim.o.background = "dark"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.g.foldmethod = "expr"
vim.g.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldenable = false

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
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

vim.o.timeout = true
vim.o.timeoutlen = 300

vim.opt.syntax = "off"

vim.opt.termguicolors = true

vim.cmd.colorscheme("vscode")
