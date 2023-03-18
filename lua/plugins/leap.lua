return {
  'ggandor/leap.nvim',
  dependencies = {
    'tpope/vim-repeat'
  },
  config = function()
    require('leap').add_default_mappings()
    vim.keymap.del({'n', 'v'}, 's')

    vim.keymap.set({'n', 'v'}, 'r', '<Plug>(leap-forward-till)')
    vim.keymap.set({'n', 'v'}, 'R', '<Plug>(leap-backward-till)')
    vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
  end
}
