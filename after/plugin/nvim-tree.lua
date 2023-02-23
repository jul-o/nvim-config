require('nvim-tree').setup({
    view = {
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
