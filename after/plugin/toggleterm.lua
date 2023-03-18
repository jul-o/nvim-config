local tt = require('toggleterm')
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = 'float' })

local lazygit_toggle = function ()
  lazygit:toggle()
end

vim.keymap.set("n", "<leader>gg", lazygit_toggle, {noremap = true, silent = true, desc = "LazyGit"})

tt.setup {
    size = 20,
    open_mapping = '<C-t>',
    direction = 'float'
}
