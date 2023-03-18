local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
local event = "BufWritePre" -- or "BufWritePost"

local configure_formatting = function(client, bufnr)
  if client.supports_method('textDocument/formatting') then
    vim.api.nvim_clear_autocmds({ buffer = bufnr, group = group })
    vim.api.nvim_create_autocmd(event, {
      buffer = bufnr,
      group = group,
      callback = function()
        -- vim.lsp.buf.format({ bufnr = bufnr, async = false })
        vim.cmd.EslintFixAll()
      end,
      desc = "[lsp] format on save",
    });

    
  end
end

return {
  'jose-elias-alvarez/null-ls.nvim',
  config = {
    on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
        vim.keymap.set("n", "<leader>f", function()
          vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
        end, { buffer = bufnr, desc = "[lsp] format" })
      end

      configure_formatting(client, bufnr)

      if client.supports_method('textDocument/documentHighlight') then
        vim.api.nvim_create_autocmd({ 'CursorHold' }, {callback = function() pcall(vim.lsp.buf.document_highlight) end})
        vim.api.nvim_create_autocmd({ 'CursorHoldI' }, {callback = function() pcall(vim.lsp.buf.document_highlight) end})

        vim.api.nvim_create_autocmd({ 'CursorMovedI', 'CursorMoved'  }, {callback = function() 
          pcall(vim.lsp.buf.clear_references)
          pcall(vim.lsp.buf.document_highlight)
        end})
      end

    end,
  }
}
