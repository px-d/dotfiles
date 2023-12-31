return {
    "phaazon/hop.nvim",
    config = function()
        require("hop").setup({})
        vim.keymap.set("n", "<leader>hh", ":HopAnywhere<CR>")
        vim.keymap.set("n", "<leader>ha", ":HopAnywhereBC<CR>") -- It is "BeforeCaret" but Above sounds better to me
        vim.keymap.set("n", "<leader>hb", ":HopAnywhereAC<CR>") -- It is "AfterCaret" but Below sounds better to me
    end,
}
