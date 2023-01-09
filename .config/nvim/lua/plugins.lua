--=================================================================================
--                                    Packer-Config 
--=================================================================================
-- URL           : https://github.com/wbthomason/packer.nvim
-- Reset package : rm -rf ~/.local/share/nvim;
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

packer.startup(function(use)
    -- Packer installer
    use ({ "wbthomason/packer.nvim", opt = true })

-- Setting -- 
    -- Nvim-web-devicons
    use ({ "kyazdani42/nvim-web-devicons" })

-- Customization --
    -- Better mappings
    use ({ "b0o/mapx.nvim" })

    -- Status bar
    use ({
        "nvim-lualine/lualine.nvim",
        config = require("lualine_setup")
    })
end)
