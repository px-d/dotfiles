vim.cmd("colorscheme rose-pine")

---------------
--- OPTIONS ---
---------------

vim.opt.relativenumber = true --
vim.opt.number = true --
vim.opt.clipboard = "unnamedplus" --
vim.opt.breakindent = true --
vim.opt.showmode = false --
vim.opt.undofile = true -- Save undo history
vim.opt.ignorecase = true -- Case Sensitive searching unless \C or capital in search
vim.opt.smartcase = true -- ^ see above
vim.opt.signcolumn = "yes" --
vim.opt.updatetime = 250 --
vim.opt.timeoutlen = 300 --
vim.opt.splitright = true --
vim.opt.splitbelow = true --
vim.opt.inccommand = "split" -- When replacing with %s show live updates.
vim.opt.cursorline = true -- Horizontal line where cursor is
vim.opt.scrolloff = 10 --
vim.opt.hlsearch = true --
vim.opt.tabstop = 4 --
vim.opt.shiftwidth = 4 --
vim.opt.expandtab = true --

--------------
--- KEYMAP ---
--------------

-- GENERAL
vim.keymap.set("n", "<c-s>", ":w<cr>", {}) -- Write on CTRL+S
vim.keymap.set("i", "<c-s>", "<esc>:w<cr>a", {}) -- Also do it in insert mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- Reset search highlight
vim.keymap.set("n", "<leader>l", ":Neotree toggle left<CR>", {}) -- Neotree

-- Navigate panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<cr>")
vim.keymap.set("n", "<c-j>", ":wincmd j<cr>")
vim.keymap.set("n", "<c-h>", ":wincmd h<cr>")
vim.keymap.set("n", "<c-l>", ":wincmd l<cr>")

-- Telescope ---
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>p", builtin.find_files, { desc = "Search Files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ile [G]rep (live)" })
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })

-- LSP --
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ctions" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show Hover Menu" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "[G]o to [D]eclaration" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "[G]o to [D]efinition" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "[G]o to [R]eferences" })

vim.keymap.set("n", "<c-f>", vim.lsp.buf.format, { desc = "[F]ormat" })

-- Buffer Navigation
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", {})
vim.keymap.set("n", "<S-l>", ":bnext<CR>", {})
vim.keymap.set("n", "<C-W>", ":bdelete<CR>", {})

-- FUZZY find in current buffer --
function FuzzyFindInBuffer()
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 0,
		previewer = false,
	}))
end

vim.api.nvim_create_user_command("Fuzzy", FuzzyFindInBuffer, {})
vim.keymap.set("n", "<c-_>", FuzzyFindInBuffer, { desc = "[/] Fuzzily search in current buffer" })
