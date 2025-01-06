-- Configurazione di nvim-lspconfig
local lspconfig = require'lspconfig'

-- Configurazione per TypeScript e JavaScript
lspconfig.ts_ls.setup{
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  on_attach = function(client, bufnr)
    -- Disabilita il formattatore integrato di tsserver se usi un altro formattatore
--    client.resolved_capabilities.document_formatting = false
  end
}

-- Configurazione per Python
lspconfig.pyright.setup{
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  on_attach = function(client, bufnr)
    -- Configurazioni specifiche per Pyright se necessario
  end
}
