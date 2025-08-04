return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,      -- ensure it loads before others
        opts = {
            variant = "main", -- or "moon" / "dawn"
            dark_variant = "main",
            styles = {
                transparency = true,
            },
        },
        config = function(_, opts)
            require("rose-pine").setup(opts)
            vim.cmd.colorscheme("rose-pine")
        end,
    },
}
