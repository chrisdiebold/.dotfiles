
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr)  
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
  vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, { buffer = 0 })
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = 0 })
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = 0 })
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = 0 })
  vim.keymap.set('n', '<leader>cc', vim.lsp.buf.code_action, { buffer = 0 })
  vim.keymap.set('n', '<leader>df', vim.diagnostic.goto_next, { buffer = 0 })
  vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { buffer = 0 })
  vim.keymap.set('n', '<leader>dl', "<cmd>Telescope diagnostics<cr>", { buffer = 0 })
end

-- GO LSP
require'lspconfig'.gopls.setup{
  on_attach = function() 
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = 0 })
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = 0 })
    vim.keymap.set('n', '<leader>cc', vim.lsp.buf.code_action, { buffer = 0 })
    vim.keymap.set('n', '<leader>df', vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { buffer = 0 })
    vim.keymap.set('n', '<leader>dl', "<cmd>Telescope diagnostics<cr>", { buffer = 0 })
  end,
}

require'lspconfig'.tsserver.setup{
  on_attach = function(client, bufnr) 
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false

    local ts_utils = require('nvim-lsp-ts-utils')
    ts_utils.setup({})
    ts_utils.setup_client(client)

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, { buffer = 0 })
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = 0 })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = 0 })
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = 0 })
    vim.keymap.set('n', '<leader>cc', vim.lsp.buf.code_action, { buffer = 0 })
    vim.keymap.set('n', '<leader>df', vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, { buffer = 0 })
    vim.keymap.set('n', '<leader>dl', "<cmd>Telescope diagnostics<cr>", { buffer = 0 })
    vim.keymap.set('n', '<leader>rf', '<cmd>TSLspRenameFile<cr>')
    vim.keymap.set('n', '<leader>fi', '<cmd>TSLspImportAll<cr>')

    on_attach(client, bufnr)
  end,
}

local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.code_actions.eslint,
    null_ls.builtins.formatting.prettier
    
  },
  on_attach = on_attach
})


require'lspconfig'.html.setup {
  capabilities = capabilities
}
