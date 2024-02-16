return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({
                pickers = {
                    find_files = {
                        theme = "ivy",
                        prompt_prefix = "🔍 ",
                        --     find_command = {
                        --         "rg",
                        --         "--files",
                        --         "--glob",
                        --         "!**/.git/*",
                        --     },
                        --     hidden = true,

                    },
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_cursor({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
