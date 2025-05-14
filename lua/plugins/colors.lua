return {
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		priority = 1000, -- ensure it loads before others
		opts = {
			theme = "dragon",
			transparent = false,
			background = {
				dark = "dragon",
				light = "lotus",
			},
		},
		config = function(_, opts)
			require("kanagawa").setup(opts)
			vim.cmd.colorscheme("kanagawa")
		end,
	},
}
