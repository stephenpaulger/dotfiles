vim.lsp.enable({
    'lua_ls',
    'ruff',
    'tinymist',
    'gopls',
    'jinja',
})

vim.diagnostic.config(
    {
        virtual_text = {
            spacing = 2,
            prefix = "●",
        },
    }
)
