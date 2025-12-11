-- lua/plugins/copilotchat.lua
return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "main",
  cmd = "CopilotChat",

  opts = function()
    return require("config.copilotchat.opts")()
  end,

  keys = require("config.copilotchat.keys"),

  config = function(_, opts)
    require("config.copilotchat.setup")(opts)
  end,
}
