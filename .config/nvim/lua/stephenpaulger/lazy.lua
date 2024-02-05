local plugins = {
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',
    'vimwiki/vimwiki',
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- lsp-zero ---
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip', version = "v2.*",},
--  {'williamboman/mason.nvim'},           -- Optional
--  {'williamboman/mason-lspconfig.nvim'}, -- Optional
    --- end lsp-zero ---

}
local opts = {}



local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(plugins, opts)
