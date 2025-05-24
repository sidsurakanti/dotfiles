local remap = vim.keymap.set

remap("n", "<leader>pv", vim.cmd.Ex)
remap("n", "<Esc>", "<cmd>nohlsearch<CR>")
remap("n", "<leader><leader>", ":w<CR>")
remap("i", "jk", "<Esc>")
remap("n", "<C-u>", "<C-u>zz")
remap("n", "<C-d>", "<C-d>zz")
remap("n", "0", "^")
remap("n", "^", "0")
remap("n", "<leader>x", ":q<CR>")
remap("n", "<leader>/", "<leader>gcc")
remap("n", "<Tab>", ":bnext<CR>")
remap("n", "<S-Tab>", ":bprev<CR>")

remap("n", "<leader>q", vim.diagnostic.setloclist, { desc = "open diagnostic quickfix list" })

remap("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

remap("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
remap("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
remap("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
remap("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

local diagnostics_active = true

remap("n", "<leader>td", function()
	diagnostics_active = not diagnostics_active
	if diagnostics_active then
		vim.diagnostic.enable()
		print("diagnostics on")
	else
		vim.diagnostic.enable(false)
		print("diagnostics off")
	end
end, { desc = "[T]oggle [D]iagnostics" })
