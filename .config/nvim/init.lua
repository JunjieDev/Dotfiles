--=================================================================================
--                                        Lua
--=================================================================================
-- URL         : https://github.com/nanotee/nvim-lua-guide
-- reload file : :luafile %
-- check error : :checkhealth

--=================================================================================
--                                      REQUIRE
--=================================================================================
require('settings')
require('mappings')
require('plugins')

-- Colorscheme --
vim.cmd("colorscheme dracula")
vim.g.lightline = { colorscheme = "dracula" }
