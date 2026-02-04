return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        branch = "main",
        lazy = false,
        config = function()
            local treesitter = require("nvim-treesitter")
            treesitter.install({
                "c",
                "lua",
                "vim",
                "vimdoc",
                "javascript",
                "typescript",
                "html",
                "yaml",
                "python",
                "typst",
            })
        end,
    },
}
