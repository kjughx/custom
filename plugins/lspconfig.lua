local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "fortls", "rust_analyzer", }

local clangd_capabilities = capabilities
clangd_capabilities.offsetEncoding = {'utf-8'}

lspconfig.clangd.setup { -- clangd is special, needs extra care
    on_attach = on_attach,
    capabilities = clangd_capabilities,
    settings = {
      restartAfterCrash = false,
    },
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
      restartAfterCrash = false,
    },
  }
end
