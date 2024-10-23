local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
local nopts = { remap = true, silent = true }


-- ignorecase
vim.o.ignorecase = true
vim.o.smartcase = true

-- move between method in python .py file
keymap("n", "<Bslash>", "]m", nopts)
keymap("n", "<Bar>", "[m", nopts)


-- L to $ and H to $
keymap({"n", "v", "o"}, "L", "$", opts)
keymap({"n", "v", "o"}, "H", "^", opts)

-- better indent handling
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- paste preserves primal yanked piece
keymap("v", "p", '"_dP', opts)

-- removes highlighting after escaping vim search
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)

-- insert cell #%%
keymap("n", "<leader>ic", "o#%%<ESC>", opts)

-- next tab and previous tab
keymap("n", "J", "gT", nopts)
keymap("n", "K", "gt", nopts)
-- keymap("n", "<tab>", "gT", nopts)
-- keymap("n", "<s-tab>", "gt", nopts)

-- merge lines
keymap("n", "gj", "J", opts)

-- call vscode commands from neovim

-- vscode interactive window move up and down by cell
keymap({"n"}, "<C-j>", "<cmd>lua require('vscode').action('jupyter.gotoNextCellInFile')<CR>")
keymap({"n"}, "<C-k>", "<cmd>lua require('vscode').action('jupyter.gotoPrevCellInFile')<CR>")

-- general keymaps
keymap({"n", "v"}, "<leader>t", "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
-- keymap({"n", "v"}, "<leader>b", "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
keymap({"n", "v"}, "<leader>d", "<cmd>lua require('vscode').action('editor.action.showHover')<CR>")
keymap({"n", "v"}, "<leader>a", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>")
-- keymap({"n", "v"}, "<leader>sp", "<cmd>lua require('vscode').action('workbench.actions.view.problems')<CR>")
keymap({"n", "v"}, "<leader>cn", "<cmd>lua require('vscode').action('notifications.clearAll')<CR>")
keymap({"n", "v"}, "<leader>qo", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
keymap({"n", "v"}, "<leader>cp", "<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>")
-- keymap({"n", "v"}, "<leader>pr", "<cmd>lua require('vscode').action('code-runner.run')<CR>")
-- keymap({"n", "v"}, "<leader>fd", "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>")


-- vscode python debug
-- keymap("n", "<C-k>", "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
keymap("n", "<A-b>", "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
keymap("n", "<A-j>", "<cmd>lua require('vscode').action('workbench.action.debug.stepOver')")
keymap("n", "<A-k>", "<cmd>lua require('vscode').action('workbench.action.debug.continue')")
keymap("n", "<A-h>", "<cmd>lua require('vscode').action('workbench.action.debug.stepOut')")
keymap("n", "<A-l>", "<cmd>lua require('vscode').action('workbench.action.debug.stepInto')")
keymap("n", "<A-r>", "<cmd>lua require('vscode').action('workbench.action.debug.restart')")
-- keymap("n", "<A-r>", "<cmd>lua require('vscode').action('workbench.action.debug.start')")


-- open outline
keymap({"n", "v"}, "<leader>ol", "<cmd>lua require('vscode').action('outline.focus')<CR>")
keymap({"n", "v"}, "<leader>1", "<cmd>lua require('vscode').action('workbench.action.focusFirstEditorGroup')<CR>")
keymap({"n", "v"}, "<leader>2", "<cmd>lua require('vscode').action('workbench.action.focusSecondEditorGroup')<CR>")
keymap({"n", "v"}, "<leader>kb", "<cmd>lua require('vscode').action('workbench.action.openGlobalKeybindings')<CR>")
keymap({"n", "v"}, "<leader>us", "<cmd>lua require('vscode').action('workbench.action.openSettingsJson')<CR>")
keymap({"n", "v"}, "<leader>b", "<cmd>lua require('vscode').action('workbench.action.toggleSidebarVisibility')<CR>")



-- harpoon keymaps
keymap({"n", "v"}, "<leader>ha", "<cmd>lua require('vscode').action('vscode-harpoon.addEditor')<CR>")
keymap({"n", "v"}, "<leader>ho", "<cmd>lua require('vscode').action('vscode-harpoon.editorQuickPick')<CR>")
keymap({"n", "v"}, "<leader>he", "<cmd>lua require('vscode').action('vscode-harpoon.editEditors')<CR>")
keymap({"n", "v"}, "<leader>h1", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor1')<CR>")
keymap({"n", "v"}, "<leader>h2", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor2')<CR>")
keymap({"n", "v"}, "<leader>h3", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor3')<CR>")
keymap({"n", "v"}, "<leader>h4", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor4')<CR>")
keymap({"n", "v"}, "<leader>h5", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor5')<CR>")
keymap({"n", "v"}, "<leader>h6", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor6')<CR>")
keymap({"n", "v"}, "<leader>h7", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor7')<CR>")
keymap({"n", "v"}, "<leader>h8", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor8')<CR>")
keymap({"n", "v"}, "<leader>h9", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor9')<CR>")

-- project manager keymaps
keymap({"n", "v"}, "<leader>pa", "<cmd>lua require('vscode').action('projectManager.saveProject')<CR>")
keymap({"n", "v"}, "<leader>po", "<cmd>lua require('vscode').action('projectManager.listProjectsNewWindow')<CR>")
keymap({"n", "v"}, "<leader>pe", "<cmd>lua require('vscode').action('projectManager.editProjects')<CR>")

-- print(vim.g.mapleader)
-- print("The leader key is ", vim.g.mapleader)

return false
