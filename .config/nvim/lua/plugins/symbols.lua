return {
	"stevearc/aerial.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},

	config = function()
		require("aerial").setup({
			layout = {
				min_width = 0.2,
				default_direction = "prefer_left",
				resize_to_content = true,
			},
			manage_folds = true,
			on_attach = function(bufnr)
				vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
				vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
			end,
		})

		-- global toggle
		vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle<CR>")
	end,
}
