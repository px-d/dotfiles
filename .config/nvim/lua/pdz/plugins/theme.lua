return {
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
        require("rose-pine").setup({
            variant = "moon"
        })
    end
}

