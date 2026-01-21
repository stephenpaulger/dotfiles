return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                                                                       ]],
			[[                                                                       ]],
            [[`7MN.   `7MF'`7MM"""YMM    .g8""8q.`7MMF'   `7MF'`7MMF'`7MMM.     ,MMF']],
            [[  MMN.    M    MM    `7  .dP'    `YM.`MA     ,V    MM    MMMb    dPMM  ]],
            [[  M YMb   M    MM   d    dM'      `MM VM:   ,V     MM    M YM   ,M MM  ]],
            [[  M  `MN. M    MMmmMM    MM        MM  MM.  M'     MM    M  Mb  M' MM  ]],
            [[  M   `MM.M    MM   Y  , MM.      ,MP  `MM A'      MM    M  YM.P'  MM  ]],
            [[  M     YMM    MM     ,M `Mb.    ,dP'   :MM;       MM    M  `YM'   MM  ]],
            [[.JML.    YM  .JMMmmmmMMM   `"bmmd"'      VF      .JMML..JML. `'  .JMML.]],
			[[                                                                       ]],
			[[                                                                       ]],
		}

		alpha.setup(dashboard.opts)
	end,
}
