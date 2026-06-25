return {
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				cache = true,

				extensions = {
					cmp = true,
					telescope = true,

					alpha = false,
					blinkcmp = false,
					dashboard = false,
					dapui = false,
					gitsigns = false,
					grapple = false,
					helpview = false,
					heirline = false,
					hop = false,
					indentblankline = false,
					kubectl = false,
					leap = false,
					markview = false,
					markdown = false,
					mini = false,
					neogit = false,
					noice = false,
					notify = false,
					rainbow_delimiters = false,
					snacks = false,
					trouble = false,
					treesitter = false,
					treesittercontext = false,
					whichkey = false,
				},

				transparent = false,
				italic_comments = false,
				hide_background = false,
				borderless_telescope = false,
			})
		end,
	},
	{
		'maxmx03/solarized.nvim',
		lazy = true,
		priority = 1000,
		config = function()
			vim.o.background = 'dark'

			-- default config
			require('solarized').setup({
				transparent = {
					enabled = true,
					pmenu = true,
					normal = true,
					normalfloat = true,
					neotree = false,
					nvimtree = false,
					whichkey = false,
					telescope = true,
					lazy = true,
				},
				on_highlights = nil,
				on_colors = nil,
				palette = 'solarized', -- solarized (default) | selenized
				variant = 'winter', -- "spring" | "summer" | "autumn" | "winter" (default)
				error_lens = {
					text = false,
					symbol = true,
				},
				styles = {
					enabled = true,
					types = {},
					functions = {},
					parameters = {},
					comments = {},
					strings = {},
					keywords = {},
					variables = {},
					constants = {},
				},
				plugins = {
					treesitter = true,
					lspconfig = true,
					navic = false,
					cmp = true,
					indentblankline = false,
					indentmini = false,
					neotree = false,
					nvimtree = false,
					whichkey = false,
					dashboard = false,
					gitsigns = true,
					telescope = true,
					noice = false,
					hop = true,
					ministatusline = false,
					minitabline = false,
					ministarter = false,
					minicursorword = false,
					notify = false,
					rainbowdelimiters = false,
					bufferline = false,
					lazy = true,
					rendermarkdown = true,
					ale = false,
					coc = false,
					leap = true,
					alpha = false,
					yanky = false,
					gitgutter = true,
					mason = true,
					flash = false,
				},
			})
		end,
	},
	{
		"shiningvida/alabaster.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("alabaster")
		end
	},
}
