local function my_on_attach(bufnr)
    local api = require("nvim-tree.api")

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Help"))
    vim.keymap.set("n", "l", api.node.open.edit, opts("Help"))
    vim.keymap.set("n", "n", api.fs.create, opts("Help"))

    -- Close the file tree when a file is selected
    vim.api.nvim_create_autocmd("BufEnter", {
        group = vim.api.nvim_create_augroup("NvimTreeClose", { clear = true }),
        pattern = "*",
        callback = function()
            if vim.bo.filetype ~= "NvimTree" then
                require("nvim-tree.api").tree.close()
            end
        end,
    })
end

return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            on_attach = my_on_attach,
            view = {
                width = 50, -- Set the default width here
            },
        })
    end,
}
