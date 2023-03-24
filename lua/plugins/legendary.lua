return {
  'mrjones2014/legendary.nvim',
  dependencies = 'stevearc/dressing.nvim',
  config = {
    -- TODO: `setup()` must be called before `require('which-key).register()`
    which_key = { auto_register = true }
  }
}
