local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'lua_ls'
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({select = true}),
	['<Tab>'] = cmp.mapping.confirm({select = true}),
	['<C-c>'] = cmp.mapping.complete(),
})


lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
    local config = require('lspconfig')
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    config.tsserver.setup{}
    
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set('n', '<leader>ld', function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set('n', '<leader>lh', function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set('n', '<leader>l?', vim.cmd.LspInfo, opts)
    vim.keymap.set('n', '[d', function() vim.lsp.buf.goto_next() end, opts)
    vim.keymap.set('n', ']d', function() vim.lsp.buf.goto_prev() end, opts)
    vim.keymap.set('n', '<leader>a', function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set('n', '<leader>lR', function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set('n', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set('n', '<leader>lt', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<leader>ll', vim.lsp.codelens.refresh, opts)
    vim.keymap.set('n', '<space>le', vim.diagnostic.open_float, opts)
end)

lsp.setup()
