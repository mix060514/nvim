local opts = { noremap = true, silent = true }

-- remap leader key
vim.keymap.set("n", "<Space>", "", opts)

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Reload vimrc
vim.keymap.set("n", "<leader>rc", ":source c:/Users/TheWorld/AppData/Local/nvim/init.lua<CR>", opts)

require("config.lazy")
require("user.vscode_keymaps")

-- if vim.g.vscode then
--   -- VSCode Neovim
--   require "user.vscode_keymaps"
-- else
--   -- Ordinary Neovim
-- end
