-- lua/config/copilotchat/setup.lua
return function(opts)
  local chat = require("CopilotChat")

  vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "copilot-chat",
    callback = function()
      vim.opt_local.relativenumber = false
      vim.opt_local.number = false
      vim.opt_local.modifiable = true
      vim.opt_local.readonly = false
      vim.opt_local.swapfile = false
    end,
  })

  chat.setup(opts)
end
