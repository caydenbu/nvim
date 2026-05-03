return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.install").install({
			"lua",
			"javascript",
			"typescript",
			"json",
			"java",
			"gitignore",
			"make",
			"cmake",
			"bash",
			"css",
			"html",
			"c",
			"cpp",
		})
	end,
}
