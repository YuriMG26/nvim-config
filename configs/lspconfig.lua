local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

capabilities.offsetEncoding = {"utf-16"}

local lspconfig = require("lspconfig")
local navic = require("nvim-navic")

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    --    client.server_capabilities.signatureHelpProvider = false
    navic.attach(client, bufnr)
    on_attach(client, bufnr)
  end,
  capabilities = capabilities
}

lspconfig.ols.setup({})
lspconfig.glsl_analyzer.setup{}
