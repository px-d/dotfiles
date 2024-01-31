-- return {
--
--     "phaazon/hop.nvim",
--     config = function()
--         require("hop").setup({})
--    end,
-- }
return {
    "ggandor/lightspeed.nvim",
    config = function()
        require("lightspeed").setup({
            jump_to_unique_chars = false,
            safe_labels = {}
        })
    end,
    depedencies = {
        "tpope/vim-repeat",
    },
}
