return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "v0.2.1",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local telescope = require("telescope")
            telescope.setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
                pickers = {
                    find_files = {
                        find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
                    },
                },
            })
            telescope.load_extension("ui-select")

            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
            vim.keymap.set("n", "<leader>fh", builtin.oldfiles, { desc = "Recent files" })
            vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Find diagnostics" })
            vim.keymap.set("n", "<leader>fD", function()
                builtin.diagnostics({ bufnr = 0 })
            end, { desc = "Find buffer diagnostics" })
        end,
    },
}
