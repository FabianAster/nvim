-- lua/config/copilotchat/opts.lua
local M = {}

M.providers = require("config.copilotchat.providers") -- optional split for providers

function M.build_opts()
  local user = vim.env.USER or "User"
  user = user:sub(1, 1):upper() .. user:sub(2)

  return {
    auto_insert_mode = true,
    question_header = "  " .. user .. " ",
    answer_header = "  Copilot ",
    window = {
      width = 0.4,
    },
    model = "qwen3-coder:30b",
    providers = M.providers,
  }
end

return function()
  return M.build_opts()
end
