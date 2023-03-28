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
  mapx.nnoremap("gd", "<cmd>Telescope lsp_definitions<cr>", bufopts)
  mapx.nnoremap("<leader>k", "vim.lsp.buf.hover", bufopts)
  mapx.nnoremap("gi", "vim.lsp.buf.implementation", bufopts)
  mapx.nnoremap("<C-k>", "vim.lsp.buf.signature_help", bufopts)
  mapx.nnoremap("<leader>rn", "vim.lsp.buf.rename", bufopts)
  mapx.nnoremap("<leader>ca", "vim.lsp.buf.code_action", bufopts)
  mapx.nnoremap("gr", "vim.lsp.buf.references", bufopts)
  mapx.nnoremap("<leader>d", "<cmd>Telescope lsp_document_symbols<cr>", bufopts)

  -- Format on save
  vim.api.nvim_create_autocmd('BufWritePre', {
    group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format()
    end
  })
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_config = {
  capabilities = capabilities,
  on_attach = function(_, bufnr)
    on_attach(_, bufnr)
  end
}

-- MASON --
local servers = {
  "angularls", -- Angular
  --"bashls", -- Bash
  --"csharp_ls", -- C#
  "cssls", -- css
  "cssmodules_ls", -- css module
  --"dartls", -- Dart
  "dockerls", -- Dorcker
  "html", -- html
  --"java_language_server", -- Java
  "jsonls", -- Json
  --"kotlin_language_server", -- kotlin
  --"ltex", -- Latex
  "marksman", -- Markdown
  --"powershell_es", -- Powershell
  "pylsp", -- Python
  "rust_analyzer", -- Rust
  "sumneko_lua", -- Lua
  "tailwindcss", -- Tailwindcss
  "tsserver", -- Typescript
  "vimls", -- Vimls
  "yamlls", -- Yaml
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
  end,
  tsserver = function()
    require('typescript').setup({
      server = vim.tbl_extend('force', lsp_config, {
        on_attach = function(_, bufnr)
          on_attach(_, bufnr)
        end,
        init_options = {
          preferences = {
            importModuleSpecifierPreference = 'project=relative',
            jsxAttributeCompletionStylr = 'none'
          }
        }
      })
    })
  end
})





-- Set up nvim-cmp.
local cmp = require "cmp"
local luasnip = require "luasnip"
local lspkind = require "lspkind"

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    ['<C-d>'] = cmp.mapping(function(fallback)
      if luasnip.jumpable(1) then
        luasnip.jump(1)
      else
        fallback()
      end
    end, { "i", "s" }),
    ['<C-b>'] = cmp.mapping(function(fallback)
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" })
  }),
  sources = cmp.config.sources({
    {
      name = 'nvim_lsp',
      entry_filter = function(entry)
        return require("cmp.types").lsp.CompletionItemKind[entry:get_kind()] ~= 'Text'
      end
    },
    { name = 'luasnip' }, -- For luasnip users.
  }, {
    { name = 'buffer' },
  }),
  formatting = {
    fields = {
      cmp.ItemField.Abbr, -- Abbr
      cmp.ItemField.Kind, -- kind
      cmp.ItemField.Menu, -- Menu
    },
    format = lspkind.cmp_format({
      with_text = true,
      mode = 'symbol_text', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      before = function(entry, vim_item)
        vim_item.menu = ({
          nvim_lsp = "[LSP]",
          spell = "[Spellings]",
          zsh = "[Zsh]",
          buffer = "[Buffer]",
          ultisnips = "[Snip]",
          treesitter = "[Treesitter]",
          calc = "[Calculator]",
          nvim_lua = "[Lua]",
          path = "[Path]",
          nvim_lsp_signature_help = "[Signature]",
          cmdline = "[Vim Command]"
        })[entry.source.name]
        return vim_item
      end
    })
  }
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})
