-- return {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     config = function()
--         vim.cmd.colorscheme("catppuccin-frappe")
--     end,
-- }

return {
    "chaserensberger/christmas.nvim",
    name = "christmas",
    lazy = false,
    config = function()
        vim.cmd.colorscheme("christmas")
    end,
}
