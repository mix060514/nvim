local opts = { noremap = true, silent = true }

-- system clipboard
vim.opt.clipboard = "unnamed,unnamedplus"

-- remap leader key
vim.keymap.set("n", "<Space>", "<Nop>", opts)

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Reload vimrc
vim.keymap.set("n", "<leader>rc", ":source $MYVIMRC<CR>", opts)
-- vim.keymap.set("n", "<leader>rc", ":source c:/Users/2012044/AppData/Local/nvim/init.lua<CR>", opts)
-- vim.keymap.set("n", "<leader>rc", ":source c:/Users/TheWorld/AppData/Local/nvim/init.lua<CR>", opts)

require("config.lazy")
require("user.vscode_keymaps")

-- if vim.g.vscode then
--   -- VSCode Neovim
--   require "user.vscode_keymaps"
-- else
--   -- Ordinary Neovim
-- end
