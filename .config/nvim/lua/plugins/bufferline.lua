return {
	"akinsho/bufferline.nvim",
	version = "*",
	requires = {
		{ "nvim-tree/nvim-web-devicons" },
	},
	config = function()
		require("bufferline").setup({
			options = {
				indicator = {
					icon = "▎", -- this should be omitted if indicator style is not 'icon'
					style = "underline",
				},
				truncate_names = false,
				close_command = "bdelete", -- can be a string | function, see "Mouse actions"
				--right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
				offsets = { { filetype = "neo-tree", text = "", padding = 1 } },
				separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
			},
		})
	end,
}
