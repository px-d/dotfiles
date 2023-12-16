return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 999,
    favlour = "macchiato",
    config = function()
        require("catppuccin").setup({
            flavour = "macchiato"
        })
        vim.cmd.colorscheme "catppuccin"
    end
}
