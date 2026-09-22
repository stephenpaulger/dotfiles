---@type vim.lsp.Config
return {
  name = 'jinja_lsp',
  cmd = { 'jinja-lsp' },
  filetypes = { 'jinja' },
  root_markers = { '.git' },
}
