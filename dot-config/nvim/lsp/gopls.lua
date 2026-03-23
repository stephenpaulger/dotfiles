---@type vim.lsp.Config
return {
    cmd = { 'gopls' },
    filetypes = { 'go' },
    root_markers = { { 'go.mod', 'go.sum' }, '.git' },
}
