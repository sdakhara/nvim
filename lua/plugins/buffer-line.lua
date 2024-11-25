return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({
			options = {
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "left", -- or "center"
						separator = true, -- Add a separator between the Neo-tree and Bufferline
					},
				},
			},
		})
	end
}
