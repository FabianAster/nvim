-- Lua
vim.api.nvim_set_keymap("n", "<C-n>", ":NERDTreeFocus<CR>", { silent = true })

vim.api.nvim_set_keymap("n", "<leader>h", "<C-w>h", {})
vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>l", {})
vim.api.nvim_set_keymap("n", "<leader>j", "<C-w>j", {})
vim.api.nvim_set_keymap("n", "<leader>k", "<C-w>k", {})

vim.api.nvim_set_keymap("n", "gs", "<C-^>", {})

vim.api.nvim_set_keymap("n", "gl", ":w<CR>:bn<CR>", {})
vim.api.nvim_set_keymap("n", "gh", ":w<CR>:bp<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>v", "<C-w>v", {})
vim.api.nvim_set_keymap("n", "<leader>s", "<C-w>s", {})
vim.api.nvim_set_keymap("n", "<leader>q", ":bd<CR>", {})

vim.api.nvim_set_keymap("n", "<leader>u", ":UndotreeToggle<CR>", {})

vim.api.nvim_set_keymap("n", "<leader>H", ":set invhlsearch<CR>", {})

vim.api.nvim_set_keymap("n", "<leader>O", "O<esc>", {})
vim.api.nvim_set_keymap("n", "<leader>o", "o<esc>", {})

vim.api.nvim_set_keymap("n", "<A-l>", ":diffget //3<CR>", {})
vim.api.nvim_set_keymap("n", "<A-h>", ":diffget //2<CR>", {})

vim.api.nvim_set_keymap("n", "<leader>r", ":vertical resize ", {})

vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {})
vim.api.nvim_set_keymap(
  "n",
  "<leader><C-r>",
  'iconst "filename" = () => { return ( <div> </div> ) } export default "filename"<esc>',
  {}
)

vim.api.nvim_set_keymap("n", "<leader>fo", ":edit ~/.config/nvim/init.vim<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>fi", ":source ~/.config/nvim/init.vim<CR>", {})

vim.api.nvim_set_keymap("n", "<leader>t", ":vert term<CR>", {})

vim.api.nvim_set_keymap("n", "ö", "<Plug>Sneak_s", {})
vim.api.nvim_set_keymap("n", "Ö", "<Plug>Sneak_S", {})

vim.api.nvim_set_keymap("x", "ö", "<Plug>Sneak_s", {})
vim.api.nvim_set_keymap("x", "Ö", "<Plug>Sneak_S", {})

vim.api.nvim_set_keymap("o", "ö", "<Plug>Sneak_s", {})
vim.api.nvim_set_keymap("o", "Ö", "<Plug>Sneak_S", {})

vim.api.nvim_set_keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>", {})
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", {})
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", {})
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", {})

-- Tree

vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<cr>", {})

-- Chat

vim.api.nvim_set_keymap("n", "<leader>a", ":CopilotChat ", {})

-- toggel comments

vim.api.nvim_set_keymap("n", "<leader>7", ":CommentToggle<cr>", {})
vim.api.nvim_set_keymap("v", "<leader>7", ":CommentToggle<cr>", {})

-- Terminal

vim.api.nvim_set_keymap("n", "<leader>i", ":ToggleTerm<cr>", {})
vim.api.nvim_set_keymap("n", "<leader>ga", ":ToggleTermToggleAll<cr>", {})
