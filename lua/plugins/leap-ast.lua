return {
  'ggandor/leap-ast.nvim',
  dependencies = {
    'ggandor/leap.nvim',
    'nvim-treesitter/nvim-treesitter'
  },
  config = function ()
    vim.keymap.set({'n', 'x', 'o'}, '<leader>s', require('leap-ast').leap, { desc = 'Leap AST' })
  end
}
