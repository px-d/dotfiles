-- Commands
vim.opt.relativenumber = true
vim.opt.number = true
vim.cmd("colorscheme rose-pine")
vim.opt.signcolumn = "yes"

-- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", telescope.find_files, {})
vim.keymap.set("n", "<C-G>", telescope.live_grep, {})

-- lsp config
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<c-f>", vim.lsp.buf.format, {})
vim.keymap.set("n", "<c-s>", ":w<cr>", {})
vim.keymap.set("i", "<c-s>", "<esc>:w<cr>a",{})


-- Navigate panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<cr>")
vim.keymap.set("n", "<c-j>", ":wincmd j<cr>")
vim.keymap.set("n", "<c-h>", ":wincmd h<cr>")
vim.keymap.set("n", "<c-l>", ":wincmd l<cr>")

-- Bufferline
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", {})
vim.keymap.set("n", "<S-l>", ":bnext<CR>", {})
vim.keymap.set("n", "<C-x>", ":bdelete<CR>", {})

-- Code Editing
vim.keymap.set({ "n", "v" }, "mm", "%")     -- Jump to nearest parantheses

-- Gitsigns
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})

-- Debugging
vim.keymap.set("n", "<Leader>dt", ":DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>")
vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>")
vim.keymap.set("n", "<Leader>do", ":DapStepOver<CR>")

-- Neotree
vim.keymap.set("n", "<C-n>", ":Neotree toggle left<CR>", {})
vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

-- comment
vim.keymap.set("n", "<c-c>", ":CommentToggle<CR>", {})
vim.keymap.set("v", "<c-c>", ":'<,'>CommentToggle<CR>", {})
