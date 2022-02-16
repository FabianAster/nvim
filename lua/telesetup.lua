
require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            "*.pyc",
            "*_build/*",
            "**/coverage/*",
            "**/node_modules/*",
            "**/android/*",
            "**/ios/*",
            "**/.git/*",
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}
