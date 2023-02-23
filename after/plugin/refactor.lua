vim.keymap.set('v', '<C-r>f', function() vim.cmd.CocCommand('react-refactor.extractToFunction') end, {desc = "Extract to function"})
vim.keymap.set('v', '<C-r>F', function() vim.cmd.CocCommand('react-refactor.extractToFile') end, {desc = "Extract to file"})

