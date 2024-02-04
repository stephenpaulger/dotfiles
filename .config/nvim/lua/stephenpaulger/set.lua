-- Line numbering
vim.opt.number = true
vim.opt.relativenumber = true

------------------------------------------------------------------------------
-- moving around, searching and patterns
------------------------------------------------------------------------------
vim.opt.ignorecase = true   -- Ignore case when searching
vim.opt.smartcase = true    -- ...unless upper case is in search term
vim.opt.smartindent = true


------------------------------------------------------------------------------
-- displaying text
------------------------------------------------------------------------------
vim.opt.scrolloff = 3       -- Number of lines to show around cursor
vim.opt.termguicolors = true


------------------------------------------------------------------------------
-- tabs and indenting
------------------------------------------------------------------------------
vim.opt.shiftwidth = 4      -- Number of spaces to use for indenting
vim.opt.tabstop = 4         -- Number of spaces to represent tab
vim.opt.expandtab = true    -- Convert tabs to spaces
vim.opt.softtabstop = 4     -- see multiple spaces as tabstops so <BS> does the
                            -- right thing
