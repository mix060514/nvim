return {
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        opts = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    {"justinmk/vim-sneak"},
    {"michaeljsmith/vim-indent-object"},
    {"vim-scripts/ReplaceWithRegister"},
    {"wellle/targets.vim"},
    {"kana/vim-textobj-entire",
        dependencies = {"kana/vim-textobj-user"} 
    },
    -- {
    --     "easymotion/vim-easymotion",
    --     opts = function()
    --         vim.g.EasyMotion_do_mapping = 0
    --         vim.g.EasyMotion_smartcase = 1
    --         vim.g.EasyMotion_prompt = '{n}>>>'
    --     end,
    --     keys = {
    --         {"<leader><leader>", "<Plug>(easymotion-s2)"},
    --     },
    -- },
    -- { "haya14busa/vim-easyoperator-line",
    --     dependencies = {"easymotion/vim-easymotion"} 
    -- },

    -- {"<leader><leader>", "<cmd>lua require('hop').hint_char2()<cr>"},
    {
        'smoka7/hop.nvim',
        version = "*",
        opts = {
            keys = 'etovxqpdygfblzhckisuran'
        },
        keys = {
            {"<leader><leader>", "<cmd>lua require('hop').hint_char1()<cr>"},
        },
    },
}
