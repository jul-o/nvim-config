vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>m', vim.cmd.Mason)

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv")

vim.keymap.set('n', 'Y', 'yg$')

vim.keymap.set('n', '<leader>w', '<C-G> <C-W>')

vim.api.nvim_set_keymap('n', '<leader>w', '<C-G> <C-W>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-e>', '<Plug>(coc-snippets-expand)', { noremap = true, silent = true })
