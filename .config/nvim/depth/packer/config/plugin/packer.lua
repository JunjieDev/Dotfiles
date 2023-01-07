--=================================================================================
--                                    Packer-Config 
--=================================================================================
-- URL : https://github.com/wbthomason/packer.nvim
local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- Check packer installation
local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
	execute("packadd packer.nvim")
end

vim.cmd("packadd packer.nvim")

local packer = require("packer")
local util = require("packer.util")

packer.init({
	package_root = util.join_paths(vim.fn.stdpath("data"), "site", "pack"),
})

packer.startup(function()
    -- Packer Installer
    packer.use ({ "wbthomason/packer.nvim", opt = true })

    -- Setting -- 
        -- Nvim-web-devicons
        packer.use ({ "kyazdani42/nvim-web-devicons" })
end)
