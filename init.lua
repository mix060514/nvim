local opts = { noremap = true, silent = true }

-- remap leader key
vim.keymap.set("n", "<Space>", "", opts)

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Reload vimrc
-- use if else to avoid conflict with different devices
function is_folder_exist(folder_path)
    local success, message = pcall(function()
        local handle = io.popen("cd " .. folder_path)
        local result = handle:read("*a")
        handle:close()
        return result
    end)
    return success
end

local folder_path = "c:/Users/TheWorld/AppData/Local/nvim"
if is_folder_exist(folder_path) then
    vim.keymap.set("n", "<leader>rc", ":source c:/Users/TheWorld/AppData/Local/nvim/init.lua<CR>", opts)
else
    vim.keymap.set("n", "<leader>rc", ":source c:/Users/2012044/AppData/Local/nvim/init.lua<CR><CR>", opts)
end

require("config.lazy")
require("user.vscode_keymaps")

-- if vim.g.vscode then
--   -- VSCode Neovim
--   require "user.vscode_keymaps"
-- else
--   -- Ordinary Neovim
-- end
