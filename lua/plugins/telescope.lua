return {
	{
		'nvim-telescope/telescope.nvim', 
		tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = "Find Files (Leader Leader)" })
			vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files" })
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Live Grep" })
			vim.keymap.set('n', '<leader>,', builtin.buffers, { desc = "Find Buffers" })
			vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find Help Tags" })
			vim.keymap.set('n', '<leader>fc', builtin.commands, { desc = "Commands" })
			vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = "Old Files" })
			vim.keymap.set('n', '<leader>fq', builtin.quickfix, { desc = "Quickfix" })
			vim.keymap.set('n', '<leader>fl', builtin.loclist, { desc = "Location List" })
			vim.keymap.set('n', '<leader>fr', builtin.registers, { desc = "Registers" })
			vim.keymap.set('n', '<leader>fm', builtin.marks, { desc = "Marks" })
			vim.keymap.set('n', '<leader>ft', builtin.treesitter, { desc = "Treesitter Symbols" })
			vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = "Keymaps" })
			vim.keymap.set('n', '<leader>fs', builtin.spell_suggest, { desc = "Spell Suggest" })
			vim.keymap.set('n', '<leader>fgi', builtin.git_files, { desc = "Git Files" })
			vim.keymap.set('n', '<leader>fgb', builtin.git_branches, { desc = "Git Branches" })
			vim.keymap.set('n', '<leader>fgc', builtin.git_commits, { desc = "Git Commits" })
			vim.keymap.set('n', '<leader>fgs', builtin.git_status, { desc = "Git Status" })
			vim.keymap.set('n', '<leader>fa', builtin.autocommands, { desc = "Autocommands" })
		end
	},
	{
		{
			"nvim-telescope/telescope-ui-select.nvim",
			config = function()
				require("telescope").setup({
					extensions = {
						["ui-select"] = {
							require("telescope.themes").get_dropdown({
								-- Optional theme settings
							}),
						},
					},
				})
				require("telescope").load_extension("ui-select")
			end
		},
	}
}
