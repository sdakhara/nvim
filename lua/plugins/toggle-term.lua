return {
	"akinsho/toggleterm.nvim",
	version = "*", -- Install the latest stable version
	config = function()
		require("toggleterm").setup {
			open_mapping = [[<c-\>]], -- Keybinding to open a terminal
			direction = "float",     -- Open terminal in floating mode
			float_opts = {
				border = "curved",     -- Border style for the floating window
				winblend = 0,          -- Transparency (0 means no transparency)
				highlights = {
					border = "FloatBorder", -- Match border color to Normal highlight
					background = "Normal", -- Match background to Normal highlight
				},

			},
		}

		-- Function to toggle LazyGit
		function _lazygit_toggle()
			local Terminal = require("toggleterm.terminal").Terminal
			local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
			lazygit:toggle()
		end

		-- Keybinding for LazyGit
		vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
	end,
}
