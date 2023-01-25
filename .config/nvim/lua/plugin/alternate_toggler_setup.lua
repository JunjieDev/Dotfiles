-- ==================================================================================
--                                Alternate-Toggler
-- ==================================================================================
-- URL         : https://github.com/rmagatti/alternate-toggler

-- VARIABLE --
local ok, alternate_toggler = pcall(require, "alternate-toggler")
local ok_m, mapx = pcall(require, "mapx")

if not ok or not ok_m then
    do
        return
    end
end

alternate_toggler.setup({
    alternates = {
        ["true"] = "false",
        ["True"] = "False",
        ["TRUE"] = "FALSE",
        ["Yes"] = "No",
        ["YES"] = "NO",
        ["1"] = "0",
        ["<"] = ">",
        ["("] = ")",
        ["["] = "]",
        ["{"] = "}",
        ['"'] = "'",
        ['""'] = "''",
        ["+"] = "-",
        ["."] = ",", [","] = ".",
        [";"] = ":", [":"] = ";",
        ["/"] = "\\", ["\\"] = "/",
        ["?"] = "!", ["!"] = "?",
        ["é"] = "è", ["è"] = "é",
        ["&"] = "|", ["|"] = "&",
        ["&&"] = "||", ["||"] = "&&",
        ["and"] = "or", ["or"] = "and",
        ["AND"] = "OR", ["OR"] = "AND",
        ["<="] = ">=", [">="] = "<=",
        ["=="] = "!=", ["!="] = "==",
        ["<-"] = "->", ["->"] = "<-",
        ["==="] = "!==",
    };

    -- <leader> + "="
    mapx.nnoremap("<leader>=", "<cmd>ToggleAlternate<CR>", { noremap = true, silent = true })
})
