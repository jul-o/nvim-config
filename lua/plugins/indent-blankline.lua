
vim.opt.list = true
vim.opt.listchars:append "eol:↴"

return {
  'lukas-reineke/indent-blankline.nvim',
  lazy = false,
  config = {
    indent_blankline_char_list = {'|', '¦', '┆', '┊'},
    char_highlight_list = {
      "IndentBlanklineIndent1",
      "IndentBlanklineIndent2",
      "IndentBlanklineIndent3",
      "IndentBlanklineIndent4",
      "IndentBlanklineIndent5",
      "IndentBlanklineIndent6",
    }
  }
}
