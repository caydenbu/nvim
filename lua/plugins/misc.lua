-- random plugins with little lines
return {

	-- git plugins
	{
		"tpope/vim-fugitive",
	},
	{
		"tpope/vim-rhubarb",
	},
	-- autopairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	-- discord rich pressence
	{
		"IogaMaster/neocord",
		even = "VeryLazy",
	},
	-- welcome page
	{
		"goolord/alpha-nvim",
		dependencies = {
			"echasnovski/mini.icons",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("alpha").setup(require("alpha.themes.theta").config)
		end,
	},
	-- surround words
	{
		"kylechui/nvim-surround",
		version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				surrounds = {
					["("] = {
						add = { "(", ")" },
					},
					[")"] = {
						add = { "(", ")" },
					},
					["["] = {
						add = { "[", "]" },
					},
					["]"] = {
						add = { "[", "]" },
					},
					["{"] = {
						add = { "{", "}" },
					},
					["}"] = {
						add = { "{", "}" },
					},
					[">"] = {
						add = { "<", ">" },
					},
				},
			})
		end,
	},
}
