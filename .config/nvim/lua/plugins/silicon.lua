return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	config = function()
		require("silicon").setup({
			font = "JetBrainsMono Nerd Font=34;Noto Emoji",
			no_round_corner = true,
			background = "#72B0F3",
			-- to_clipboard = true, -- Only use this once both, output and clipboard are functional
			output = function()
				return "~/Downloads/" .. os.date("!%Y-%m-%dT%H-%M-%S") .. "_code.png"
			end,
			window_title = function()
				local current_file_path = vim.fn.expand("%:p")
				local relative_path = vim.fn.fnamemodify(current_file_path, ":~:.") -- Convert to relative path
				return relative_path
			end,
		})
	end,
}
