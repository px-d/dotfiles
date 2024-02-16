-- General Settings
vim.opt.relativenumber = true
vim.opt.number = true

vim.keymap.set("n", "J", "5j")
vim.keymap.set("n", "K", "5k")

-- Telescope
local telescope = require("telescope.builtin")

vim.keymap.set('n', '<C-p>', telescope.find_files, {})

-- Bufferline
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", {})
vim.keymap.set("n", "<S-l>", ":bnext<CR>", {})
vim.keymap.set("n", "<C-x>", ":bdelete<CR>", {})
vim.keymap.set("n", "<S-C-x>", ":bdelete!<CR>", {})

vim.keymap.set("n", "<c-f>", vim.lsp.buf.format, {})
