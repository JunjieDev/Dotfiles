-- ==================================================================================
--                                       Setting
-- ==================================================================================
--- TIPS ---
-- :help option-list
-- :help <command> => Obtenir plus d'informations sur des commandes spécifiques.
-- :options => Permet d'avoir tout les options pour la configuration de vim.
-- URL : https://vimhelp.org/options.txt.html#options

--- VARIABLE ---
local set = vim.opt
local setglobal = vim.opt_global
--local setlocal = vim.opt_local

--- CONFIG --
setglobal.fileencoding = "UTF-8"
set.encoding = "UTF-8"
scriptencoding = "UTF-8"
setglobal.filetype = on
setglobal.syntax = on
set.fileencodings = "utf-8,sjis,euc-jp,latin"

--- SETTING ---
set.number = true
--set.relativenumber = true
set.autoindent = true
set.autoread = true
vim.cmd [[set mouse=a]]
set.history = 1000
set.ruler = true
set.showcmd = true
set.showmode = true
set.backspace = "indent,eol,start"
set.whichwrap = "b,s"
set.cmdheight = 1
set.splitbelow = true
set.splitright = true
set.wrap = false
set.termguicolors = true
set.hidden = true
set.list = true
set.listchars:append("eol:↴")
--set.signcolumn = "yes"
--set.winbar = "%f %m"

--- LAST LINE ---
set.linebreak = true
set.linespace = 5

--- TAB & SPACES & INDENT ---
set.shiftwidth = 4
set.tabstop = 4
set.expandtab = true
set.scrolloff = 5
set.smartindent = true
set.smarttab = true
set.softtabstop = 2

--- SEARCH ---
set.incsearch = true
set.hlsearch = true
set.showmatch = true
set.ignorecase = true
set.smartcase = true

--- HIGHLIGHT CURSOR ---
set.cursorline = true

--- NAVIGATION MENU ---
set.wildmenu = true

--- TIME ---
set.ttimeout = true
set.ttimeoutlen = 50
