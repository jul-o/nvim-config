require('nvim-tree').setup({
  diagnostics = {
    enable = true,
    show_on_dirs = true,

  },
  view = {
    side = 'right',
    mappings = {
      list = {
        { key = 'l', action = 'edit'},
        { key = 'h', action = 'close_node'},
        { key = 'h', action = 'close_node'},
      }
    },

  },
  update_focused_file = {
    enable = true,
    update_root = true,

  },
  filters = {
    dotfiles = false
  }

})
