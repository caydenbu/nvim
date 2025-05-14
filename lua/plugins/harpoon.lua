return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("harpoon"):setup({
			menu = {
				width = vim.api.nvim_win_get_width(0) - 4,
			},
			settings = {
				save_on_toggle = true,
			},
		})
	end,
	keys = function()
		local harpoon = require("harpoon")
		return {
			{
				"<leader>H",
				function()
					harpoon:list():add()
				end,
				desc = "Harpoon File",
			},
			{
				"<leader>h",
				function()
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
				desc = "Harpoon Quick Menu",
			},
			{
				"<leader>h1",
				function()
					harpoon:list():select(1)
				end,
				desc = "Harpoon to File 1",
			},
			{
				"<leader>h2",
				function()
					harpoon:list():select(2)
				end,
				desc = "Harpoon to File 2",
			},
			{
				"<leader>h3",
				function()
					harpoon:list():select(3)
				end,
				desc = "Harpoon to File 3",
			},
			{
				"<leader>h4",
				function()
					harpoon:list():select(4)
				end,
				desc = "Harpoon to File 4",
			},
			{
				"<leader>h5",
				function()
					harpoon:list():select(5)
				end,
				desc = "Harpoon to File 5",
			},
		}
	end,
}
