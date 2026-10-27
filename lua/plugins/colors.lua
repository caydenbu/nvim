-- Colorschemes + Themery picker
--
-- All theme plugins are lazy = true. lazy.nvim automatically loads a lazy
-- colorscheme plugin the moment `:colorscheme <name>` is run, so Themery's
-- live preview and its startup restore both work, and only the theme you
-- actually use gets loaded.
--
-- Don't call vim.cmd.colorscheme() anywhere else; Themery owns that.

local themes = {
  -- Gruvbox
  { "ellisonleao/gruvbox.nvim", lazy = true, opts = {} },

  -- Ayu
  {
    "Shatur/neovim-ayu",
    lazy = true,
    config = function()
      require("ayu").setup({})
    end,
  },

  -- Rose Pine
  { "rose-pine/neovim", name = "rose-pine", lazy = true, opts = {} },

  -- Tokyo Night
  { "folke/tokyonight.nvim", lazy = true, opts = {} },

  -- Catppuccin
  { "catppuccin/nvim", name = "catppuccin", lazy = true, opts = {} },

  -- Kanagawa
  { "rebelot/kanagawa.nvim", lazy = true, opts = {} },

  -- Nightfox family (nightfox, carbonfox, duskfox, nordfox, terafox)
  { "EdenEast/nightfox.nvim", lazy = true, opts = {} },

  -- One Dark
  { "navarasu/onedark.nvim", lazy = true, opts = { style = "dark" } },

  -- Everforest
  { "neanias/everforest-nvim", lazy = true, main = "everforest", opts = {} },

  -- Dracula
  { "Mofiqul/dracula.nvim", lazy = true, opts = {} },

  -- GitHub
  { "projekt0n/github-nvim-theme", name = "github-theme", lazy = true, opts = {} },

  -- Nord
  { "gbprod/nord.nvim", lazy = true, opts = {} },
}

local picker = {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      -- Force dark background before every switch.
      globalBefore = [[ vim.opt.background = "dark" ]],

      themes = {
        -- Gruvbox
        { name = "Gruvbox dark", colorscheme = "gruvbox" },

        -- Ayu
        { name = "Ayu dark", colorscheme = "ayu-dark" },
        { name = "Ayu mirage", colorscheme = "ayu-mirage" },

        -- Rose Pine
        { name = "Rose Pine", colorscheme = "rose-pine-main" },
        { name = "Rose Pine moon", colorscheme = "rose-pine-moon" },

        -- Tokyo Night
        { name = "Tokyo Night", colorscheme = "tokyonight-night" },
        { name = "Tokyo Night storm", colorscheme = "tokyonight-storm" },
        { name = "Tokyo Night moon", colorscheme = "tokyonight-moon" },

        -- Catppuccin
        { name = "Catppuccin mocha", colorscheme = "catppuccin-mocha" },
        { name = "Catppuccin macchiato", colorscheme = "catppuccin-macchiato" },
        { name = "Catppuccin frappe", colorscheme = "catppuccin-frappe" },

        -- Kanagawa
        { name = "Kanagawa wave", colorscheme = "kanagawa-wave" },
        { name = "Kanagawa dragon", colorscheme = "kanagawa-dragon" },

        -- Nightfox
        { name = "Nightfox", colorscheme = "nightfox" },
        { name = "Carbonfox", colorscheme = "carbonfox" },
        { name = "Duskfox", colorscheme = "duskfox" },
        { name = "Nordfox", colorscheme = "nordfox" },
        { name = "Terafox", colorscheme = "terafox" },

        -- Others
        { name = "One Dark", colorscheme = "onedark" },
        { name = "Everforest", colorscheme = "everforest" },
        { name = "Dracula", colorscheme = "dracula" },
        { name = "Dracula soft", colorscheme = "dracula-soft" },
        { name = "GitHub dark", colorscheme = "github_dark" },
        { name = "GitHub dark dimmed", colorscheme = "github_dark_dimmed" },
        { name = "Nord", colorscheme = "nord" },
      },

      livePreview = true,
    })

    vim.keymap.set("n", "<leader>th", "<cmd>Themery<cr>", { desc = "Pick colorscheme" })
  end,
}

table.insert(themes, picker)
return themes
