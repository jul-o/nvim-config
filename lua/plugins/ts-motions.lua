return {
  'jul-o/ts-motions.nvim',
  dependencies = 'nvim-treesitter/nvim-treesitter',
  config = function ()
    require('ts-motions').setup();
    vim.keymap.set({'n', 'i', 'v'}, '<C-l>', vim.cmd.JumpToChild, { desc = 'Jump to child' })
    vim.keymap.set({'n', 'i', 'v'}, '<C-h>', vim.cmd.JumpToParent, { desc = 'Jump to parent' })
    vim.keymap.set({'n', 'i', 'v'}, '<C-j>', vim.cmd.JumpToNextSibling, { desc = 'Jump to next sibling' })
    vim.keymap.set({'n', 'i', 'v'}, '<C-k>', vim.cmd.JumpToPreviousSibling, { desc = 'Jump to previous sibling' })
  end
}
