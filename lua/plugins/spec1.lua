return {
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    {"justinmk/vim-sneak"},
    {"easymotion/vim-easymotion"},
    {"michaeljsmith/vim-indent-object"},
    {"vim-scripts/ReplaceWithRegister"},
    {"wellle/targets.vim"},
    
    {"kana/vim-textobj-entire",
        dependencies = {"kana/vim-textobj-user"} 
    }, -- Ensure this follows the dependency
}
