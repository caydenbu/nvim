return {
	"nvimtools/none-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Prettier for web dev stuff
				null_ls.builtins.formatting.prettier.with({
					extra_args = { "--tab-width", "2", "--use-tabs", "false" },
				}),

				-- Stylua for Lua
				null_ls.builtins.formatting.stylua.with({
					extra_args = { "--indent-type", "Spaces", "--indent-width", "2" },
				}),

				-- Clang-format for C/C++
				null_ls.builtins.formatting.clang_format.with({
					extra_args = { "--style={IndentWidth: 2, UseTab: Never}" },
				}),
			},

			-- Format on save
			on_attach = function(client, bufnr)
				if client:supports_method("textDocument/formatting") then
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = bufnr,
						callback = function()
							-- Only use none-ls so LSP servers' formatters don't fight prettier/stylua
							vim.lsp.buf.format({
								bufnr = bufnr,
								filter = function(c)
									return c.name == "null-ls"
								end,
							})
						end,
					})
				end
			end,
		})
	end,
}
