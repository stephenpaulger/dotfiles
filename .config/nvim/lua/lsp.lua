vim.lsp.enable({
    'lua_ls',
    'ruff',
    'tinymist',
})

vim.diagnostic.config(
    {
        virtual_text = {
            spacing = 2,
            prefix = "●",
        },
    }
)
