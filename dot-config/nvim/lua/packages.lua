local gh = function(repo)
    return "https://github.com/" .. repo
end

local group = vim.api.nvim_create_augroup("packages", { clear = true })

vim.api.nvim_create_autocmd("PackChanged", {
    group = group,
    callback = function(event)
        local data = event.data or {}
        if data.kind ~= "install" and data.kind ~= "update" then
            return
        end

        if data.spec and data.spec.name == "nvim-treesitter" then
            vim.cmd.packadd("nvim-treesitter")
            pcall(vim.cmd, "TSUpdate")
        end
    end,
})

vim.pack.add({
    { src = gh("catppuccin/nvim"), name = "catppuccin" },
    { src = gh("goolord/alpha-nvim") },
    { src = gh("nvim-tree/nvim-web-devicons") },
    { src = gh("tpope/vim-fugitive") },
    { src = gh("tpope/vim-rhubarb") },
    { src = gh("lewis6991/gitsigns.nvim") },
    { src = gh("mason-org/mason.nvim") },
    { src = gh("nvim-neo-tree/neo-tree.nvim"), version = "v3.x" },
    { src = gh("nvim-lua/plenary.nvim") },
    { src = gh("MunifTanjim/nui.nvim") },
    { src = gh("nvim-telescope/telescope-ui-select.nvim") },
    { src = gh("nvim-telescope/telescope.nvim"), version = "v0.2.1" },
    { src = gh("nvim-treesitter/nvim-treesitter"), version = "main" },
    { src = gh("chomosuke/typst-preview.nvim"), version = vim.version.range("1") },
    { src = gh("vimwiki/vimwiki") },
}, {
    confirm = false,
    load = true,
})

vim.cmd.colorscheme("catppuccin-frappe")

do
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
        [[                                                                      ]],
        [[                                                                      ]],
        [[`7MN.   `7MF'`7MM"""YMM   .g8""8q.`7MMF'   `7MF'`7MMF'`7MMM.     ,MMF']],
        [[  MMN.    M    MM    `7 .dP'    `YM.`MA     ,V    MM    MMMb    dPMM  ]],
        [[  M YMb   M    MM   d   dM'      `MM VM:   ,V     MM    M YM   ,M MM  ]],
        [[  M  `MN. M    MMmmMM   MM        MM  MM.  M'     MM    M  Mb  M' MM  ]],
        [[  M   `MM.M    MM   Y , MM.      ,MP  `MM A'      MM    M  YM.P'  MM  ]],
        [[  M     YMM    MM    ,M `Mb.    ,dP'   :MM;       MM    M  `YM'   MM  ]],
        [[.JML.    YM  .JMMmmmMMM   `"bmmd"'      VF      .JMML..JML. `'  .JMML.]],
        [[                                                                      ]],
        [[                                                                      ]],
    }

    alpha.setup(dashboard.opts)
end

require("gitsigns").setup()

require("mason").setup({
    ensure_installed = {
        "tinymist",
        "typstyle",
        "lua-language-server",
        "gopls",
    },
})

vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>")

do
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
end

require("typst-preview").setup({})
