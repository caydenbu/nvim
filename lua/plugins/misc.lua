-- random plugins with little lines
return {

    -- git plugins
    {
        "tpope/vim-fugitive",
    },
    {
        "tpope/vim-rhubarb",
    },
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",  -- required
            "sindrets/diffview.nvim", -- optional - Diff integration

            -- Only one of these is needed.
            "nvim-telescope/telescope.nvim", -- optional
            "ibhagwan/fzf-lua",              -- optional
            "echasnovski/mini.pick",         -- optional
            "folke/snacks.nvim",             -- optional
        },
        opts = {
            kind = "floating"
        },
        {
            "lewis6991/gitsigns.nvim",
            opts = {
                signs      = {
                    add          = { text = "│" },
                    change       = { text = "│" },
                    delete       = { text = "_" },
                    topdelete    = { text = "‾" },
                    changedelete = { text = "~" },
                },
                signcolumn = true, -- Toggle with :Gitsigns toggle_signs
                numhl      = false,
                linehl     = false,
                word_diff  = false,
            },
        }

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
    -- Comments
    {
        'numToStr/Comment.nvim',
        opts = {
        },
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
        }
    },
    -- which-key
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
    -- Toggle Term
    {
        {
            'akinsho/toggleterm.nvim',
            version = "*",
            opts = {
                direction = "float",
            }
        }
    }
}
