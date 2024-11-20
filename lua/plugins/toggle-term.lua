return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = [[<C-\>]],
			direction = "float",
			float_opts = {
				border = "curved",
			},
		})
		vim.keymap.set('n', '<leader>gg', function()
			vim.cmd("ToggleTerm direction=float cmd='lazygit'")
		end, { desc = "Open Lazygit" })
	end
}
