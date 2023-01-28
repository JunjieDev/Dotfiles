-- ==================================================================================
--                                   Null-ls
-- ==================================================================================
-- URL         : https://github.com/jose-elias-alvarez/null-ls.nvim

-- VARIABLE --
local ok, null_ls = pcall(require, "null-ls")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion

if not ok then
    do
        return
    end
end

null_ls.setup({
    sources = {
        formatting.lua_format,
        formatting.prettier,
        formatting.stylua,
        diagnostics.eslint,
        completion.spell,
    },
})
