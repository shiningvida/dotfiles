return {
	{
		"blazkowolf/gruber-darker.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			bold = false,
			invert = {
				signs = false,
				tabline = false,
				visual = false,
			},
			italic = {
				strings = false,
				comments = false,
				operators = false,
				folds = false,
			},
			undercurl = false,
			underline = false,
		},
		config = function()
			vim.cmd.colorscheme("gruber-darker")
		end,
	},
}
