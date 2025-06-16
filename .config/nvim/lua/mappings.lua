require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader><leader>", ":w<CR>")
map("i", "jk", "<ESC>")
map("n", "0", "^")
map("n", "^", "0")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
