vim.opt.number = true
vim.opt.relativenumber = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

-- Lazy Setup
require("config.lazy")
require("lazy").setup("plugins")

-- Personal Plugins
require("local-plugins.open-browser");

-- Remaps
vim.keymap.set("n", "<leader>ng", "<cmd>Neogit<CR>", { desc = "Open Neogit" })
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle floating terminal" })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
vim.keymap.set({ "n", "t" }, "<leader>tq", "<cmd>ToggleTermToggleAll<CR>", { desc = "Quit all terminals" })

-- Window Resize
vim.keymap.set("n", "<S-Up>", ":resize -2<CR>", {})
vim.keymap.set("n", "<S-Down>", ":resize +2<CR>", {})
vim.keymap.set("n", "<S-Right>", ":vertical resize -2<CR>", {})
vim.keymap.set("n", "<S-Left>", ":vertical resize +2<CR>", {})

vim.keymap.set("n", "<S-k>", ":wincmd k<CR>", {})
vim.keymap.set("n", "<S-j>", ":wincmd j<CR>", {})
vim.keymap.set("n", "<S-h>", ":wincmd h<CR>", {})
vim.keymap.set("n", "<S-l>", ":wincmd l<CR>", {})

-- BufferLine
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", {})
vim.keymap.set("n", "<leader>x", "<cmd>bdelete<CR>", {})

-- Neotree
vim.keymap.set("n", "<leader>t", ":Neotree toggle<CR>", {})
