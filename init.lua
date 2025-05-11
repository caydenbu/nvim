vim.opt.number = true           
vim.opt.relativenumber = true   
vim.o.shiftwidth = 4 
vim.o.tabstop = 4 
vim.o.softtabstop = 4 
vim.o.expandtab = true 

-- Lazy Setup
require("config.lazy");
require("lazy").setup("plugins")

-- Remaps
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", {})
vim.keymap.set("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Close current buffer" })

