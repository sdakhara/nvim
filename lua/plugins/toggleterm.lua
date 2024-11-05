return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup {
      -- Customize your terminal settings here
      open_mapping = [[<leader>t]], -- Use Ctrl+t to toggle the terminal
      direction = 'horizontal',     -- Change this to 'vertical' or 'float' if desired
      size = 20,                    -- Size of the terminal window
    }
  end
}
