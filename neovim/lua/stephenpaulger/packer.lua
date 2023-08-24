-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'

	use {
		'maxmx03/solarized.nvim',
		config = function()
			vim.o.background = 'dark' -- or 'light'

			vim.cmd.colorscheme 'solarized'
		end
	}


	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end
	}

end)
