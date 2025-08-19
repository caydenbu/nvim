return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    config = function()
        require("telescope").setup({})

        local builtin = require("telescope.builtin")

        -- Find files in the current project
        vim.keymap.set("n", "<leader>ff", builtin.find_files,
            { desc = "Telescope: Find files" })

        -- Find files tracked by git
        vim.keymap.set("n", "<leader>fb", builtin.git_files,
            { desc = "Telescope: Git files" })

        -- Search for the word under the cursor
        vim.keymap.set("n", "<leader>fw", function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end, { desc = "Telescope: Grep word under cursor" })

        -- Search for the WORD under the cursor (whole WORD, not just word)
        vim.keymap.set("n", "<leader>pWs", function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end, { desc = "Telescope: Grep WORD under cursor" })

        -- Prompt for input, then grep for that string
        vim.keymap.set("n", "<leader>grp", function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, { desc = "Telescope: Grep user input" })
    end,
}
