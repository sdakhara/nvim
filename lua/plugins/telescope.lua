return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
    	vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        "--no-ignore-vcs",
      },
    },
  },
}

