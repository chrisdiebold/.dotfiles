return {
    {
        "AlexvZyl/nordic.nvim",
        lazy = false,
        config = function()
            --        vim.cmd([[colorscheme nordic ]])
        end
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        config = function()
            require("tokyonight").setup({
                style = "storm",
                transparent = true,
                terminal_colors = true,
            })
            vim.cmd([[colorscheme tokyonight]])
        end
    }
}
