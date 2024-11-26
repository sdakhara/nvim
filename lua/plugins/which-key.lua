return {
	"folke/which-key.nvim",
	dependencies = {
	"echasnovski/mini.icons"
	},
	config = function()
		require("which-key").setup({
			plugins = {
				marks = true, -- shows a list of your marks on ' and `
				registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT
				spelling = {
					enabled = true, -- enables spell checking suggestions
					suggestions = 20, -- maximum number of suggestions
				},
			},
			icons = {
				group = " ", -- Icon for groups
				breadcrumb = "»", -- Separator for breadcrumbs
				separator = "→", -- Separator for key-value pairs
			},
		})
	end,
}
