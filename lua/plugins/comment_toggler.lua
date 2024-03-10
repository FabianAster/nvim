return {
  "terrortylor/nvim-comment",
  version = "*",
  lazy = false,
  config = function()
    require("nvim_comment").setup({ comment_empty = false })
  end,
}
