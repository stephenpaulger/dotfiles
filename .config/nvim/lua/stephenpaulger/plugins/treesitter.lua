return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        branch = "main",
        lazy = false,
        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                auto_install = true,
                hightlight = { enable = true },
                indent = { enable = true },
            })
        end,
    },
}
