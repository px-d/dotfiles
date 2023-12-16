return {
	"phaazon/hop.nvim",
	config = function()
		require("hop").setup({})
		
		vim.keymap.set('n', '<leader>hh', ':HopAnywhere<CR>')
		vim.keymap.set('n', '<leader>hb', ':HopAnywhereBC<CR>')
		vim.keymap.set('n', '<leader>ha', ':HopAnywhereAC<CR>')
	end
}
