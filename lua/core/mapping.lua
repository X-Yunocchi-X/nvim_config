vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>q", "<cmd>q<cr>")
keymap.set("n", "<leader>w", "<cmd>w<cr>")

keymap.set("i", "jk", "<Esc>")

keymap.set("n", "<leader>\\", ":vsp<CR>") -- split vertical
keymap.set("n", "<leader>-", ":sp<CR>") -- split horizontal
keymap.set("n", "<leader>c", "<C-w>c") -- close this
keymap.set("n", "<leader>o", "<C-w>o") -- close others
-- like tmux
keymap.set("n", "<A-h>", "<C-w>h")
keymap.set("n", "<A-j>", "<C-w>j")
keymap.set("n", "<A-k>", "<C-w>k")
keymap.set("n", "<A-l>", "<C-w>l")

keymap.set("n", "<leader>nh", ":noh<cr>")

keymap.set("n", "Y", "y$") -- yank to end of line
keymap.set("n", "D", "d$") -- delete to end of line
keymap.set("n", "<leader>l", ":setlocal spell! spelllang=en_us<cr>") -- toggle spell check

require("core.plugins_mapping.completion")
require("core.plugins_mapping.editor")
require("core.plugins_mapping.tool")
require("core.plugins_mapping.ui")
