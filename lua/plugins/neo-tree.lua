return	{
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<CR>', { desc = "Toggle Neo-tree" })
		vim.keymap.set('n', '<leader>o', '<cmd>Neotree focus<CR>', { desc = "Focus Neo-tree" })
		vim.keymap.set('n', '<leader>r', '<cmd>Neotree refresh<CR>', { desc = "Refresh Neo-tree" })
		vim.keymap.set('n', '<leader>n', '<cmd>Neotree reveal<CR>', { desc = "Reveal Current File in Neo-tree" })
		vim.keymap.set('n', '<leader>c', '<cmd>Neotree close<CR>', { desc = "Close Neo-tree" })
	end
}

