vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set signcolumn=yes")
vim.cmd("set number")
vim.cmd("autocmd InsertEnter * :set norelativenumber")
vim.cmd("autocmd InsertLeave * :set relativenumber")

vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

vim.o.foldcolumn = "0"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<cr>")
vim.keymap.set("n", "<c-j>", ":wincmd j<cr>")
vim.keymap.set("n", "<c-h>", ":wincmd h<cr>")
vim.keymap.set("n", "<c-l>", ":wincmd l<cr>")

vim.keymap.set("n", "<leader>h", ":noh<cr>")

-- Delete Line without yanking
vim.keymap.set("n", "<leader>dl", '0v$"_d')

-- set shift J & K to move 5 lines

vim.keymap.set("n", "J", "5j")
vim.keymap.set("n", "K", "5k")

-- None LS
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})

-- Bufferline
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", {})
vim.keymap.set("n", "<S-l>", ":bnext<CR>", {})
vim.keymap.set("n", "<C-x>", ":bdelete<CR>", {})

-- comment
vim.keymap.set("n", "<c-c>", ":CommentToggle<CR>", {})

-- hop
vim.keymap.set("n", "<c-b>", ":HopAnywhere<CR>")
vim.keymap.set("n", "<leader>ha", ":HopAnywhereBC<CR>") -- It is "BeforeCaret" but Above sounds better to me
vim.keymap.set("n", "<leader>hb", ":HopAnywhereAC<CR>") -- It is "AfterCaret" but Below sounds better to me

-- lsp config
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- neo tree
vim.keymap.set("n", "<C-n>", ":Neotree toggle left<CR>", {})
vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

-- telescope
-- local telescope = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")

-- Trouble
vim.keymap.set("n", "<leader>t", ":TroubleToggle<CR>")
