return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 30,
      hide_numbers = false, -- hide the number column in toggleterm buffers
    })
  end,
}
