return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
			ensure_installed = {
				"rust_analyzer",
				"svelte",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.tsserver.setup({})
			lspconfig.html.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.svelte.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.v_analyzer.setup({})
			lspconfig.angularls.setup({})
			lspconfig.gopls.setup({})
            lspconfig.taplo.setup({})
            lspconfig.jedi_language_server.setup({})
		end,
	},
}
