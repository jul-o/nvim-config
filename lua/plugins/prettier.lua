return {
  'MunifTanjim/prettier.nvim',
  config = function() 
    require('prettier').setup {
      bin = 'prettier', -- or `'prettierd'` (v0.22+)
      filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "markdown",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
        "svelte",
      },
    }
  end
}
