return {
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        priority = 1000, -- ensure it loads before others
        opts = {
            theme = "dragon",
            transparent = true,
            background = {
                dark = "dragon",
            },
            overrides = function(colors)
                return {
                    LineNr = { bg = "none" },
                    SignColumn = { bg = "none" },
                }
            end
        },
        config = function(_, opts)
            require("kanagawa").setup(opts)
            vim.cmd.colorscheme("kanagawa")
        end,
    },
}
