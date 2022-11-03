local lsp = require'lspconfig'
local coq = require'coq'

--- Enable language servers
lsp.pyright.setup{}
lsp.pyright.setup{
  coq.lsp_ensure_capabilities{} 
}

-- Enable Rust Language Server
lsp.rust_analyzer.setup{}

--[[
require'lspconfig'.clangd.setup{
  cmd = { "clangd", "--background-index"}


}
--]]

