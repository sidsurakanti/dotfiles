require "nvchad.mappings"

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>i", vim.diagnostic.open_float)
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>x", ":wq<CR>")
map("n", "<leader><leader>", ":w<CR>")
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-d>", "<C-d>zz")
map("i", "jk", "<ESC>")
map("n", "0", "^")
map("n", "^", "0")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
