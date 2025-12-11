-- lua/config/copilotchat/keys.lua
return {
  { "<c-s>",     "<CR>", ft = "copilot-chat", desc = "Submit Prompt", remap = true },
  { "<leader>A", "",     desc = "+ai",        mode = { "n", "v" } },
  {
    "<leader>Aa",
    function()
      return require("CopilotChat").toggle()
    end,
    desc = "Toggle (CopilotChat)",
    mode = { "n", "v" },
  },
  {
    "<leader>Ax",
    function()
      return require("CopilotChat").reset()
    end,
    desc = "Clear (CopilotChat)",
    mode = { "n", "v" },
  },
  {
    "<leader>a",
    function()
      vim.ui.input({
        prompt = "Chat #selection: ",
      }, function(input)
        if input ~= "" then
          require("CopilotChat").ask(input)
        end
      end)
    end,
    desc = "Quick Chat (CopilotChat)",
    mode = { "n", "v" },
  },
  {
    "<leader>Ap",
    function()
      require("CopilotChat").select_prompt()
    end,
    desc = "Prompt Actions (CopilotChat)",
    mode = { "n", "v" },
  },
}
