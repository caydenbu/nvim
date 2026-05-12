return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
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

		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"lua",
				"javascript",
				"typescript",
				"json",
				"java",
				"make",
				"cmake",
				"bash",
				"css",
				"html",
				"c",
				"cpp",
			},
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
