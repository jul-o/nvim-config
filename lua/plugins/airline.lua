return {
  'vim-airline/vim-airline',
  dependencies = {'vim-airline/vim-airline-themes'},
  config = function ()
    vim.cmd.AirlineTheme('base16')
  end
}
