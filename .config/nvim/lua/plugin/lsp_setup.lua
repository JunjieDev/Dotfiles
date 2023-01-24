-- ==================================================================================
--                                      LSP
-- ==================================================================================
-- URL :
--    https://github.com/neovim/nvim-lspconfig
--    https://github.com/williamboman/mason.nvim
--    https://github.com/williamboman/mason-lspconfig.nvim
-- ==================================================================================

-- VARIABLE --
local opts = { noremap = true, silent = true }
-- REQUIRE --
local ok_mason, mason = pcall(require, "mason")
local ok_mason_lsp, mason_lsp = pcall(require, "mason-lspconfig")
local ok_lsp, lsp = pcall(require, "lspconfig")
local ok_mapx, mapx = pcall(require, "mapx")

-- Checking
local ready = ok_mason and ok_mason_lsp and ok_lsp and ok_mapx

if not ready then
  do
    return
  end
end

-- ICONS --
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- BORDER --
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
})

-- MAPPING --
mapx.nnoremap("[d", "vim.diagnostic.goto_prev", opts)
mapx.nnoremap("]d", "vim.diagnostic.goto_next", opts)

local on_attach = function(_, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  mapx.nnoremap("gD", "vim.lsp.buf.declaration", bufopts)
  mapx.nnoremap("gd", "vim.lsp.buf.definition", bufopts)
  mapx.nnoremap("<space>k", "vim.lsp.buf.hover", bufopts)
  mapx.nnoremap("gi", "vim.lsp.buf.implementation", bufopts)
  mapx.nnoremap("<C-k>", "vim.lsp.buf.signature_help", bufopts)
  mapx.nnoremap("<space>rn", "vim.lsp.buf.rename", bufopts)
  mapx.nnoremap("<space>ca", "vim.lsp.buf.code_action", bufopts)
  mapx.nnoremap("gr", "vim.lsp.buf.references", bufopts)

  -- Format on save
  vim.api.nvim_create_autocmd('BufWritePre', {
    group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format()
    end
  })
end

local lsp_config = {
  on_attach = function(_, bufnr)
    on_attach(_, bufnr)
  end
}

-- MASON --
local servers = {
  "sumneko_lua",
}
mason.setup()
mason_lsp.setup({
  ensure_installed = servers,
  automatic_installation = true,
})

mason_lsp.setup_handlers({
  function(server_name)
    lsp[server_name].setup(lsp_config)
  end,
  sumneko_lua = function()
    lsp.sumneko_lua.setup(vim.tbl_extend('force', lsp_config, {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' }
          }
        }
      }
    }))
  end
})
